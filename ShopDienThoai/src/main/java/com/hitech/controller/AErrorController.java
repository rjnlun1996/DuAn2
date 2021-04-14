package com.hitech.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AErrorController implements  ErrorController  {
	
	@GetMapping(ViewConstraint.URL_ERROR)
	public String table(Model model) {
		return ViewConstraint.VIEW_ERROR;
	}
	
	@Override
    public String getErrorPath() {
        return ViewConstraint.URL_ERROR;
    }
}
