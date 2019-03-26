package com.accounts.erp.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.accounts.erp.constants.SqlConstants;
import com.accounts.erp.model.Customer;
import com.accounts.erp.model.Spares;

@Component
public class CustomerDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	final static Logger logger = Logger.getLogger(CustomerDao.class);
	
	public int saveCustomerDetails(Customer customer) {
		int result = jdbcTemplate.update(SqlConstants.SAVECUSTOMER,new Object[] {customer.getCustomerName(),customer.getCompanyName(),customer.getAddress1(),
				customer.getAddress2(),customer.getContactNumber(),customer.getEmail(),customer.getGstNumber()});
		return result;
	}
	
	public int editCustomerDetails(Customer customer) {
		int result = jdbcTemplate.update(SqlConstants.UPDATECUSTOMER,new Object[] {customer.getCustomerName(),customer.getCompanyName(),customer.getAddress1(),
				customer.getAddress2(),customer.getContactNumber(),customer.getEmail(),customer.getGstNumber(),customer.getCustomerid()});
		return result;
	}
	
	public List<Customer> getCustomerBySearchString(final String searchString) {
		
		List<Customer> queryResult = jdbcTemplate.query(SqlConstants.SELECT_CUSTOMER+"'"+searchString+"%'", new BeanPropertyRowMapper<>(Customer.class));
		if (queryResult == null) {
			queryResult = new ArrayList<Customer>();
		}
		return queryResult;
	}
	
	public Customer getCustomerById(final int customerId) {
		
		Customer customer =  jdbcTemplate.queryForObject(SqlConstants.SELECT_CUSTOMER_BY_ID,new Object[] {customerId}, new BeanPropertyRowMapper<>(Customer.class));
		return customer;
	}
}
