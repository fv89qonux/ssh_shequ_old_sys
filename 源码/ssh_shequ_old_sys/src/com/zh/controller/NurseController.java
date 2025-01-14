package com.zh.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.zh.base.BaseController;
import com.zh.pojo.Admin;
import com.zh.pojo.Bed;
import com.zh.pojo.Nurse;
import com.zh.pojo.User;
import com.zh.service.AdminService;
import com.zh.service.NurseService;
import com.zh.service.UserService;

/**
 * 护工
 * @author 赵赫
 *
 */
@Controller
@RequestMapping("/nurse")
public class NurseController extends BaseController {

	@Autowired
	NurseService nurseService;
	@Autowired
	UserService userService;

	/**
	 * 查询
	 * @param map
	 * @param nurse
	 * @return
	 */
	@RequestMapping("get")
	public String get(Map<String, Object> map) {
		nurseService.get(map);
		return "nurse/list";
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("del")
	public String del(Integer id) {
		nurseService.del(id);
		return "true";
	}
	/**
	 * 增加
	 * @param nurse
	 * @return
	 */
	@ResponseBody
	@RequestMapping("add")
	public String add(Nurse nurse, Map<String, Object> map) {
		List<User> list = userService.getById(nurse.getUserId(), map);
		if(list == null || list.size() == 0){
			return "false";
		}
		nurseService.add(nurse);
		return "true";
	}
	/**
	 * 修改
	 * @param nurse
	 * @return
	 */
	@ResponseBody
	@RequestMapping("update")
	public String update(Nurse nurse, Map<String, Object> map) {
		List<User> list = userService.getById(nurse.getUserId(), map);
		if(list == null || list.size() == 0){
			return "false";
		}
		nurseService.update(nurse);
		return "true";
	}
	/**
	 * 跳转到更新页面
	 * @param nurse
	 * @return
	 */
	@RequestMapping("toUpdate")
	public String toUpdate(Map<String, Object> map, Integer id) {
		nurseService.getById(id, map);
		return "nurse/update";
	}
	/**
	 * 跳转到添加页面
	 * @param nurse
	 * @return
	 */
	@RequestMapping("toAdd")
	public String toAdd() {
		return "nurse/add";
	}
}
