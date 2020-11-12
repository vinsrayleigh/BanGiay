package com.webshop.sorting;

public class Sorter {
	private String sortName;
	private String sorBy;
	public Sorter(String sortName, String sorBy) {
		
		this.setSortName(sortName);
		this.setSorBy(sorBy);
	}
	public String getSorBy() {
		return sorBy;
	}
	public void setSorBy(String sorBy) {
		this.sorBy = sorBy;
	}
	public String getSortName() {
		return sortName;
	}
	public void setSortName(String sortName) {
		this.sortName = sortName;
	}
}
