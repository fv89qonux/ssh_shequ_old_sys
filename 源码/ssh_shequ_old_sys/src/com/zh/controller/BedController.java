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
import com.zh.pojo.BedType;
import com.zh.pojo.User;
import com.zh.service.AdminService;
import com.zh.service.BedService;
import com.zh.service.BedTypeService;
import com.zh.service.UserService;

/**
 * 床位
 * @author 赵赫
 *
 */
@Controller
@RequestMapping("/bed")
public class BedController extends BaseController {

	@Autowired
	BedService bedService;
	@Autowired
	UserService userService;
	@Autowired
	BedTypeService bedTypeService;

	/**
	 * 查询
	 * @param map
	 * @param bed
	 * @return
	 */
	@RequestMapping("get")
	public String get(Map<String, Object> map) {
		bedService.get(map);
		return "bed/list";
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("del")
	public String del(Integer id) {
		bedService.del(id);
		return "true";
	}
	/**
	 * 增加
	 * @param bed
	 * @return
	 */
	@ResponseBody
	@RequestMapping("add")
	public String add(Bed bed, Map<String, Object> map) {
		List<User> list = userService.getById(bed.getUserId(), map);
		if(list == null || list.size() == 0){
			return "false";
		}
		List<BedType> list2 = bedTypeService.getById(bed.getType(), map);
		if(list2 == null || list2.size() == 0){
			return "error";
		}
		bedService.add(bed);
		return "true";
	}
	/**
	 * 修改
	 * @param bed
	 * @return
	 */
	@ResponseBody
	@RequestMapping("update")
	public String update(Bed bed, Map<String, Object> map) {
		List<User> list = userService.getById(bed.getUserId(), map);
		if(list == null || list.size() == 0){
			return "false";
		}
		List<BedType> list2 = bedTypeService.getById(bed.getType(), map);
		if(list2 == null || list2.size() == 0){
			return "error";
		}
		bedService.update(bed);
		return "true";
	}
	/**
	 * 跳转到更新页面
	 * @param bed
	 * @return
	 */
	@RequestMapping("toUpdate")
	public String toUpdate(Map<String, Object> map, Integer id) {
		bedService.getById(id, map);
		return "bed/update";
	}
	/**
	 * 跳转到添加页面
	 * @param bed
	 * @return
	 */
	@RequestMapping("toAdd")
	public String toAdd() {
		return "bed/add";
	}
}
