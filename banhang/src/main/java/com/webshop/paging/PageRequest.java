package com.webshop.paging;


import com.webshop.sorting.Sorter;

public class PageRequest implements Pageable {
	
	private Integer page;
	private Integer pageItem;
	private Sorter  sorter;
	public PageRequest(Integer page, Integer pageItem , Sorter sort) {
		this.page = page;
		this.pageItem = pageItem;
		this.sorter=sort;
	}
	@Override
	public Integer getPage() {
		
		return this.page;
	}

	@Override
	public Integer getOffset() {

		if(this.page!=null&&this.pageItem!=null) {
			return (this.page-1)*this.pageItem;}
		else {return null;}
	}

	@Override
	public Integer getLimit() {
		
		return this.pageItem;
	}
	@Override
	public Sorter getSorter() {
	
		if(this.sorter!=null) {
			return this.sorter;
		}
		return null;
	}

	

	

}
