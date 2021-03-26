package com.hitech.controller.client;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.CViewConstraint;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class ProfileController extends BaseController {

	@Autowired
	private AccountService accountService;

	@Autowired
	private FileStorageService fileStorageService;

	@Autowired
	private SessionUtils sessionUtils;

	@GetMapping(CViewConstraint.URL_PROFILE)
	public String Profile(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_PROFILE);
		model.addAttribute("profile", sessionUtils.getUser());
		model.addAttribute("profileAttr", accountService.findById(sessionUtils.getUser().getUsername()));
		model.addAttribute("se", sessionUtils);
		return CViewConstraint.VIEW_PROFILE;
	}

//	@GetMapping(CViewConstraint.URL_PROFILE_UPDATE)
//	public String ProfileUpdateGet(Model model, @RequestParam String id) {
//		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_PROFILE_UPDATE);
//		model.addAttribute("profile", accountService.findById(id));
//		return CViewConstraint.VIEW_PROFILE_UPDATE; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
//													// + subfix => path jsp => render html -> client
//	}

	@PostMapping(CViewConstraint.URL_PROFILE)
	public String updatePost(@Validated @ModelAttribute("profileAttr") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
			throws IOException {
		boolean isErrors = errors.hasErrors();
		Account accountOnDb = accountService.findById(account.getUsername());
		Account accountWithEmail = accountService.findByEmail(account.getEmail());
		String dbEmail = accountOnDb.getEmail();
		String tempEmail = account.getEmail();
		boolean isExistedEmail = accountWithEmail != null && !dbEmail.equals(tempEmail);
		if (isErrors || isExistedEmail) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			model.addAttribute("profile", sessionUtils.getUser());
			model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_PROFILE);
			return CViewConstraint.VIEW_PROFILE;
		}
		String avatar = fileStorageService.saveImage(file);
		if (avatar != null) {
			accountOnDb.setPhoto(avatar);
		}
		accountOnDb.setEmail(account.getEmail());
		accountOnDb.setName(account.getName());
		accountOnDb.setGender(account.isGender());
		accountOnDb.setBirthday(account.getBirthday());
		accountOnDb.setPhone(account.getPhone());
		accountOnDb.setAddress(account.getAddress());
		Account acc = accountService.update(accountOnDb);
		sessionUtils.setUser(acc);
		reAttributes.addFlashAttribute("message", "Cập nhật tài khoản " + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(CViewConstraint.URL_PROFILE);
	}
}