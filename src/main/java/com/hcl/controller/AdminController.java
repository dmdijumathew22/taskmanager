package com.hcl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hcl.model.user.User;
import com.hcl.model.user.UserRepo;
import com.hcl.service.TaskServiceImpl;
@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	TaskServiceImpl service;
	@Autowired
	UserRepo repo;

	static User user;

	@GetMapping("/")
	public String adminhome(ModelMap model) {
		if (!service.getAllTasks().isEmpty()) {

			model.put("tasks", service.getAllTasks());
		} else {
			model.put("msg", "No tasks created");
		}

		return "admin/admindashboard";
	}
		
	
	
}
