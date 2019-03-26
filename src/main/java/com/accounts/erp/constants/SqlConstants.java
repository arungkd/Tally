package com.accounts.erp.constants;

public class SqlConstants {
	public static final String SAVESPARES = "INSERT INTO SPARES(SPARENAME,SPAREUNIT,SPAREDESCRIPTION,SPAREPRICE,SPARESTOCK) VALUES(?,?,?,?,?)";
	public static final String UPDATESPARES = "UPDATE SPARES set SPARENAME = ?, SPAREUNIT =?, SPAREDESCRIPTION =?, SPAREPRICE =?, SPARESTOCK =? where SPAREID =?";
	public static final String SELECT_SPARES = "SELECT SPAREID,SPARENAME FROM SPARES WHERE SPARENAME LIKE ";
	public static final String SELECT_SPARES_BY_ID = "SELECT * FROM SPARES WHERE SPAREID = ?";
	
	public static final String SAVECUSTOMER = "INSERT INTO CUSTOMER(customername,companyname,address1,address2,contactnumber,email,gstnumber) VALUES(?,?,?,?,?,?,?)";
	public static final String UPDATECUSTOMER = "UPDATE CUSTOMER set customername =?, companyname =?, address1=?, address2=?, contactnumber=?, email=?, gstnumber=? where customerId=?";
	public static final String SELECT_CUSTOMER = "SELECT customerid,customername FROM CUSTOMER WHERE customername LIKE ";
	public static final String SELECT_CUSTOMER_BY_ID = "SELECT * FROM CUSTOMER WHERE CUSTOMERID = ?";
}
