package com.hitech.utils;

import org.apache.commons.lang.RandomStringUtils;

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
}
