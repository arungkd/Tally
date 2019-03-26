package com.accounts.erp.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.accounts.erp.constants.SqlConstants;
import com.accounts.erp.model.Spares;

@Component
public class SparesDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	final static Logger logger = Logger.getLogger(SparesDao.class);


	public int saveSpareDetails(Spares spares) {
		int result = jdbcTemplate.update(SqlConstants.SAVESPARES,new Object[] {spares.getSparename(), spares.getSpareunit(), spares.getSparedescription(),
				spares.getSpareprice(), spares.getSparestock()});
		return result;
	}
	
	
	public int editSpareDetails(Spares spares) {
		int result = jdbcTemplate.update(SqlConstants.UPDATESPARES,new Object[] {spares.getSparename(), spares.getSpareunit(), spares.getSparedescription(),
				spares.getSpareprice(), spares.getSparestock(), spares.getSpareid()});
		return result;
	}
	
	public List<Spares> getSparesBySearchString(final String searchString) {
		
		List<Spares> queryResult = jdbcTemplate.query(SqlConstants.SELECT_SPARES+"'"+searchString+"%'", new BeanPropertyRowMapper<>(Spares.class));
		if (queryResult == null) {
			queryResult = new ArrayList<Spares>();
		}
		return queryResult;
	}
	
	public Spares getSparesById(final int spareId) {
		
		Spares spare =  jdbcTemplate.queryForObject(SqlConstants.SELECT_SPARES_BY_ID,new Object[] {spareId}, new BeanPropertyRowMapper<>(Spares.class));
		return spare;
	}
}
