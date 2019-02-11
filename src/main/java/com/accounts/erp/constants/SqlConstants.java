package com.accounts.erp.constants;

public class SqlConstants {
	public static final String SAVESPARES = "INSERT INTO SPARES(SPARENAME,SPAREUNIT,SPAREDESCRIPTION,SPAREPRICE,SPARESTOCK) VALUES(?,?,?,?,?)";
	public static final String SELECT_SPARES = "SELECT SPAREID,SPARENAME FROM SPARES WHERE SPARENAME LIKE ";
	public static final String SELECT_SPARES_BY_ID = "SELECT * FROM SPARES WHERE SPAREID = ?";
}
