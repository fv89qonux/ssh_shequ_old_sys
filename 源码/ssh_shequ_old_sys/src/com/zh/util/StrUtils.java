package com.zh.util;

import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.aspectj.lang.annotation.Around;
import net.sf.json.JSON;
import net.sf.json.JSONObject;



/**
 * @描述 String字符串工具类
 * @author  
 * 
 * @日期 2020-6-6
 */
public class StrUtils {

	/**
	 * @描述 去除换行<br>
	 * @param str
	 * @return
	 * @author  
	 * 
	 * @日期 2020-6-9
	 */
	public static String trimEnter(String str){
		Pattern p = Pattern.compile("\\s*|\t|\r|\n");
		Matcher m = p.matcher(str);
		String dest = m.replaceAll("");
		return dest;
	}
	
	/**
	 * @描述 字符串空值判断<br>
	 * @param str 字符串
	 * @return 是否为空
	 * @author  
	 * 
	 * @日期 2020-6-12
	 */
	public static boolean isBlank(String str){
		if(str==null || "".equals(str.trim())){
			return true;
		}
		return false;
	}

	/**
	 * @描述 对象格式化为JSON<br>
	 * @param obj 返回值对象
	 * @return JSON 字符串
	 * @author  
	 * 
	 * @日期 2020-6-28
	 */	
	public static String response(Object obj){
		JSONObject json = (JSONObject) JSONObject.fromObject(obj);
		return json.toString();
	}
	
	/**
	 * @描述 判空<br>
	 * @param str
	 * @return
	 * @author  
	 * 
	 * @日期 2020-7-4
	 */
	public static boolean checkNull(String str){
		if(str==null || "".equals(str.trim())|| str.length()==0){
			return true;
		}else{
			return false;
		}
	}
	
}
