package com.accounts.erp.model;

import java.io.Serializable;

public class Spares implements Serializable {

	/**
	* 
	*/
	private static final long serialVersionUID = 7748361934685872103L;
	private int spareid;
	private String sparename;
	private String spareunit;
	private String sparedescription;
	private String spareprice;
	private int sparestock;

	public int getSpareid() {
		return spareid;
	}

	public void setSpareid(int spareid) {
		this.spareid = spareid;
	}

	public String getSparename() {
		return sparename;
	}

	public void setSparename(String sparename) {
		this.sparename = sparename;
	}

	public String getSpareunit() {
		return spareunit;
	}

	public void setSpareunit(String spareunit) {
		this.spareunit = spareunit;
	}

	public String getSparedescription() {
		return sparedescription;
	}

	public void setSparedescription(String sparedescription) {
		this.sparedescription = sparedescription;
	}

	public String getSpareprice() {
		return spareprice;
	}

	public void setSpareprice(String spareprice) {
		this.spareprice = spareprice;
	}


	public int getSparestock() {
		return sparestock;
	}

	public void setSparestock(int sparestock) {
		this.sparestock = sparestock;
	}

}
