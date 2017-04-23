package cn.gaokao.refen.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jdk.nashorn.internal.runtime.regexp.joni.Regex;

/**
 * Created by juncheng on 2017/3/6.
 */
public class UUIDUtil {

    public static String getRandomUUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.substring(0, 8)
                + uuid.substring(9, 13)
                + uuid.substring(14, 18)
                + uuid.substring(19, 23)
                + uuid.substring(24);
    }
    public static void main(String[] args) {
    	String a="love23next234csdn3423javaeye.00 ";
    	String regEx="[^0-9]";   
    	Pattern p = Pattern.compile(regEx);   
    	Matcher m = p.matcher(a);
    	a = m.replaceAll("").trim();
    	regEx="0+?$";
    	p = Pattern.compile(regEx);
    	m = p.matcher(a);
    	a = m.replaceAll("").trim();
    	regEx="[.]$";
    	p = Pattern.compile(regEx);
    	m = p.matcher(a);
    	a = m.replaceAll("").trim();
    	System.out.println(a);
	}

}
