package com.accounts.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	@RequestMapping(value = "/sparereport", method = RequestMethod.GET)
	public ModelAndView spareReport(HttpServletRequest request,  @ModelAttribute("spares") Spares spares) {
		ModelAndView model = new ModelAndView();
		model.setViewName("sparereport");
		return model;
	}
	

	@RequestMapping(value = "/getSparesBySearchString", method = RequestMethod.GET)
	@ResponseBody
	public String getSparesBySearchString(HttpServletRequest request, @RequestParam("searchString") String searchString) {
		System.out.println("Search String is .... "+searchString);
		List<Spares> sparesList =  sparesDao.getSparesBySearchString(searchString);
		return new JSONArray(sparesList).toString();
	}
	
	@RequestMapping(value = "/getSparesById", method = RequestMethod.GET)
	@ResponseBody
	public String getSparesById(HttpServletRequest request, @RequestParam("spareId") String spareId) {
		System.out.println("Spare id is .... "+spareId);
		Spares spares =  sparesDao.getSparesById(Integer.parseInt(spareId));
		return new JSONObject(spares).toString();
	}
	
}
