package com.hitech.utils;

import java.text.DecimalFormat;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.stereotype.Component;

@Component("stringUtils")
public class StringUtils {

	public static String generatorPassword(int len) {
	    boolean useLetters = true;
	    boolean useNumbers = true;
	    return RandomStringUtils.random(len, useLetters, useNumbers);
	}
	
	public static String generatorPassword() {
		int length = 10;
	    boolean useLetters = true;
	    boolean useNumbers = true;
	    return RandomStringUtils.random(length, useLetters, useNumbers);
	}
	
	public static String toCurrencyVN(long price) {
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		return formatter.format(price) + " đ";
	}
}
