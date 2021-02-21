package com.hcl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hcl.model.Tasks;
import com.hcl.model.user.User;
import com.hcl.model.user.UserRepo;
import com.hcl.service.TaskServiceImpl;

@Controller
//@RequestMapping("user")
public class UserController {
	@Autowired
	TaskServiceImpl service;
	@Autowired
	UserRepo repo;

	User user;

	/*
	 * @GetMapping("/") public String hello() { return "login";
	 * 
	 * }
	 * 
	 * @GetMapping("/register") public String registration() {
	 * 
	 * return "registration"; }
	 * 
	 * @PostMapping("/register") public String admin(@RequestParam(name
	 * ="username")String username,
	 * 
	 * @RequestParam(name="pwd")String pwd, @RequestParam(name="role")String role) {
	 * 
	 * user=new User(); user.setUsername(username); user.setRole(role);
	 * user.setPwd(pwd); repo.save(user); return "login"; }
	 * 
	 * 
	 */
	@GetMapping("/")
	public String welcome(Model model) {
		/*
		 * Authentication authentication =
		 * SecurityContextHolder.getContext().getAuthentication(); if (!(authentication
		 * instanceof AnonymousAuthenticationToken)) { String currentUserName =
		 * authentication.getName(); model.addAttribute("user", currentUserName); }
		 */
		return "task/welcome";
	}

	@GetMapping("/create")
	public String create() {
		return "task/create";
	}
	@PostMapping("/create")
	public String createTask(@ModelAttribute("task") Tasks task,
			/* @RequestParam(name="user")String userId, */ ModelMap model, User user) {
		service.saveOrUpdate(task);
		System.out.println(task.toString());
		user=repo.findById(1).get();
		model.put("tasks", service.getAllTasksByUser(user));
		return "task/display";
	}

	@PostMapping("/delete")
	public String delete(@RequestParam(name = "selected") String id, ModelMap model) {
		System.out.println(id);
		model.put("task", service.findById(Integer.parseInt(id)).get());
		return "task/delete";
	}

	@PostMapping("/deleteconf")
	public String deleteconf(@RequestParam(name="task.id") String id, ModelMap model) {
		System.out.println(service.findById(Integer.parseInt(id)).get());
		service.deleteTask(service.findById(Integer.parseInt(id)).get());
		model.put("msg", "Task deleted successfully");
		return "task/welcome";
	}

	@GetMapping("/display")
	public String display(ModelMap model) {

		model.put("tasks", service.getAllTasks());

		return "task/display";
	}

	@GetMapping("/updatefromwelcome")
	public String updatefromwelcome(ModelMap model) {
		model.put("msg", "Select task to update");
		model.put("tasks", service.getAllTasksByUser(user));
		return "task/display";
	}
	@PostMapping("/update")
	public String update(@RequestParam(name = "selected") String id, ModelMap model,Tasks task) {
		System.out.println(id);
		model.put("task", service.findById(Integer.parseInt(id)).get());
		return "task/update";
	}
	@PostMapping("/updateconf")
	public String updateconf(@ModelAttribute("task") Tasks task, ModelMap model) {
		System.out.println(task.toString());
		//model.put("task", service.findById(Integer.parseInt(id)).get());
		model.put("msg", "task updated");
		user=repo.findById(1).get();
		service.saveOrUpdate(task);
		model.put("tasks", service.getAllTasksByUser(user));
		return "task/display";
		
	}
}
