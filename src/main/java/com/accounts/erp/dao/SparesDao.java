package com.accounts.erp.dao;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
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
}
