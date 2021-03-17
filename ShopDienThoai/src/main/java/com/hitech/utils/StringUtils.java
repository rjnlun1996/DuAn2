package com.hitech.utils;

import org.apache.commons.text.RandomStringGenerator;

public class StringUtils {

	public static String generatorPassword(int len) {
		RandomStringGenerator generator = new RandomStringGenerator.Builder().withinRange('a', 'z').build();
		return generator.generate(len);
	}
	
	public static String generatorPassword() {RandomStringGenerator generator = new RandomStringGenerator.Builder()
		     .withinRange('a', 'z').build();
	 String randomLetters = generator.generate(20);
		return randomLetters;
	}
}
