package com.mentor.admin.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="MilkToCustomer")
public class AddMilkToCustomerEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID",updatable=false,nullable=false)
	private Integer supprecid;
	@Column
	private String cpdname,cpdate,cpdquantity,cuspdfat,cpdfatl,ctotamount;
	@ManyToOne
	@JoinColumn(name="CID")
	private CustomerEntity customer;

	public String getCpdname() {
		return cpdname;
	}
	public void setCpdname(String cpdname) {
		this.cpdname = cpdname;
	}
	public String getCpdate() {
		return cpdate;
	}
	public void setCpdate(String cpdate) {
		this.cpdate = cpdate;
	}
	public String getCpdquantity() {
		return cpdquantity;
	}
	public void setCpdquantity(String cpdquantity) {
		this.cpdquantity = cpdquantity;
	}
	public String getCuspdfat() {
		return cuspdfat;
	}
	public void setCuspdfat(String cuspdfat) {
		this.cuspdfat = cuspdfat;
	}
	public String getCpdfatl() {
		return cpdfatl;
	}
	public void setCpdfatl(String cpdfatl) {
		this.cpdfatl = cpdfatl;
	}
	public String getCtotamount() {
		return ctotamount;
	}
	public void setCtotamount(String ctotamount) {
		this.ctotamount = ctotamount;
	}
	public Integer getSupprecid() {
		return supprecid;
	}
	public void setSupprecid(Integer supprecid) {
		this.supprecid = supprecid;
	}
	public CustomerEntity getCustomer() {
		return customer;
	}
	public void setCustomer(CustomerEntity customer) {
		this.customer = customer;
	}


}
