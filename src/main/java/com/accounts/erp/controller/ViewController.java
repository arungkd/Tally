package com.accounts.erp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.accounts.erp.model.Spares;

@Controller
public class ViewController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView  login(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.addObject("spares",new Spares());
		model.setViewName("sparehome");
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView  home(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.addObject("spares",new Spares());
		model.setViewName("sparehome");
		return model;
	}
}
