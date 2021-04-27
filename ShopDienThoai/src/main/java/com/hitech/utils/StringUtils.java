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
	
	public static String renderPrice(String price){
		if(price == null) {
			return "0";
		}
		
	    String result = "";
	    int count = 0;
	    
	    for(int i = price.length() - 1; i >= 0; i--) {
	        result = price.charAt(i) + result;        
	        if(count == 3 && i != 0){
	            result = ',' + result;
	            count = 0;
	        }
	        count++;
	    }

	    return result;
	}
}
