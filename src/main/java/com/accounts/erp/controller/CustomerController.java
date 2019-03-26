package com.accounts.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.accounts.erp.dao.CustomerDao;
import com.accounts.erp.model.Customer;
import com.accounts.erp.model.Spares;

@RestController
public class CustomerController {

	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping(value = "customerhome", method = RequestMethod.GET)
	public ModelAndView  customerhome(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.addObject("customer",new Customer());
		model.setViewName("customerhome");
		return model;
	}
	
	@RequestMapping(value = "customeredit", method = RequestMethod.GET)
	public ModelAndView  customeredit(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.addObject("customer",new Customer());
		model.setViewName("customeredit");
		return model;
	}
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public ModelAndView saveCustomer(HttpServletRequest request,  @ModelAttribute("customer") Customer customer) {
		ModelAndView model = new ModelAndView();
		int result = customerDao.saveCustomerDetails(customer);
		model.setViewName("customerhome");
		model.addObject(new Customer());
		model.addObject("status","success");
		return model;
	}
	
	
	@RequestMapping(value = "/editCustomer", method = RequestMethod.POST)
	public ModelAndView editCustomer(HttpServletRequest request,  @ModelAttribute("customer") Customer customer) {
		ModelAndView model = new ModelAndView();
		System.out.println("Customer id is  ******  "+customer.getCustomerid());
		int result = customerDao.editCustomerDetails(customer);
		model.setViewName("customeredit");
		model.addObject(new Customer());
		model.addObject("status","success");
		return model;
	}
	
	
	@RequestMapping(value = "/getCustomerBySearchString", method = RequestMethod.GET)
	@ResponseBody
	public String getCustomerBySearchString(HttpServletRequest request, @RequestParam("searchString") String searchString) {
		System.out.println("Search String is .... "+searchString);
		List<Customer> customerList =  customerDao.getCustomerBySearchString(searchString);
		return new JSONArray(customerList).toString();
	}
	
	@RequestMapping(value = "/getCustomerById", method = RequestMethod.GET)
	@ResponseBody
	public String getCustomerById(HttpServletRequest request, @RequestParam("customerId") String customerId) {
		System.out.println("Spare id is .... "+customerId);
		Customer customer =  customerDao.getCustomerById(Integer.parseInt(customerId));
		return new JSONObject(customer).toString();
	}
}
