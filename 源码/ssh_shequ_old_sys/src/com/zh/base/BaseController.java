package com.zh.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
/**
 * @描述 基础Controller,执行前记录request,response,session<br>
 * 
 * @日期 2020-6-7
 */
public class BaseController {
	/**
	 * request
	 */
	protected HttpServletRequest request;
	
	/**
	 * response
	 */
	protected HttpServletResponse response;
	
	/**
	 * session
	 */
	protected HttpSession session;
	
	/**
	 * 分页--页数
	 */
	protected Integer page;
	
	/**
	 * 分页--行数
	 */
	protected Integer rows;
	
	/**
	 * @描述 Controller执行前先记录当前的request,response,session<br>
	 * @param request 请求对象
	 * @param response 返回对象
	 * @author 陈之晶
	 * 
	 * @日期 2020-6-7
	 */
    @ModelAttribute  
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){  
        this.request = request;  
        this.response = response;  
        this.session = request.getSession();  
    } 
    
    @ModelAttribute  
    public void setPagenationParams(Integer page,Integer rows){
    	this.page = page==null?0:page;
    	this.rows = rows==null?10:rows;
    }
}
