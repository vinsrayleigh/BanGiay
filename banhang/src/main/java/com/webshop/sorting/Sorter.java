package com.webshop.sorting;

public class Sorter {
	private String sortName;
	private String sortBy;
	public Sorter(String sortName, String sortBy) {
		
		this.setSortName(sortName);
		this.setSorBy(sortBy);
	}
	public String getSorBy() {
		return sortBy;
	}
	public void setSorBy(String sorBy) {
		this.sortBy = sorBy;
	}
	public String getSortName() {
		return sortName;
	}
	public void setSortName(String sortName) {
		this.sortName = sortName;
	}
}
