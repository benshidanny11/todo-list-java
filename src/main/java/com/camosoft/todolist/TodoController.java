package com.camosoft.todolist;

import java.util.List;

import javax.persistence.Entity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodoController {
	
	@Autowired
	TodoRepo todoRepo;

	@RequestMapping("home")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		List<Todo> todos=todoRepo.findAll();
		
     	mv.addObject("todos",todos);
    	mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("/addtodo")
	public ModelAndView addTodo(Todo todo) {
		todo.setStatus(false);
		ModelAndView mv=new ModelAndView();
		todoRepo.save(todo);
    	mv.setViewName("redirect:/home");
		return mv;
	}
	
	
	
}
