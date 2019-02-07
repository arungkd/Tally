package com.accounts.erp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.accounts.erp.dao.SparesDao;
import com.accounts.erp.model.Spares;

@Controller
public class SpareController {

	@Autowired
	SparesDao sparesDao;
	
	@RequestMapping(value = "sparehome", method = RequestMethod.GET)
	public ModelAndView  login(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.addObject("spares",new Spares());
		model.setViewName("sparehome");
		return model;
	}
	
	@RequestMapping(value = "/saveSpare", method = RequestMethod.POST)
	public ModelAndView saveSpare(HttpServletRequest request,  @ModelAttribute("spares") Spares spares) {
		ModelAndView model = new ModelAndView();
		int result = sparesDao.saveSpareDetails(spares);
		model.setViewName("sparehome");
		model.addObject(new Spares());
		model.addObject("status","success");
		return model;
	}
}
