package com.mentor.admin.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class ProductEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="pdcode",updatable=false,nullable=false)
	private Integer  pdcode;
	@Column
	private String pdname,pdrate,pddate,pdquantity,pdcategory;
	public Integer getPdcode() {
		return pdcode;
	}
	public void setPdcode(Integer pdcode) {
		this.pdcode = pdcode;
	}
	public String getPdname() {
		return pdname;
	}
	public void setPdname(String pdname) {
		this.pdname = pdname;
	}
	public String getPdrate() {
		return pdrate;
	}
	public void setPdrate(String pdrate) {
		this.pdrate = pdrate;
	}
	public String getPddate() {
		return pddate;
	}
	public void setPddate(String pddate) {
		this.pddate = pddate;
	}
	public String getPdquantity() {
		return pdquantity;
	}
	public void setPdquantity(String pdquantity) {
		this.pdquantity = pdquantity;
	}
	public String getPdcategory() {
		return pdcategory;
	}
	public void setPdcategory(String pdcategory) {
		this.pdcategory = pdcategory;
	}

	
	

}
