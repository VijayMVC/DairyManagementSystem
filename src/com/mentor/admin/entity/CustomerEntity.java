package com.mentor.admin.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Customer")
public class CustomerEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="CID",nullable=false,updatable=false)
    private Integer cid;
	@Column
	private String cusfname,cuslname,cusemail,cusgender,cuscontact,cuslocation,cusorgname,cusorgtype;
	@OneToMany(mappedBy="customer",cascade=CascadeType.ALL)
	private Set<AddMilkToCustomerEntity> cusmilk;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCusfname() {
		return cusfname;
	}
	public void setCusfname(String cusfname) {
		this.cusfname = cusfname;
	}
	public String getCuslname() {
		return cuslname;
	}
	public void setCuslname(String cuslname) {
		this.cuslname = cuslname;
	}
	public String getCusemail() {
		return cusemail;
	}
	public void setCusemail(String cusemail) {
		this.cusemail = cusemail;
	}
	public String getCusgender() {
		return cusgender;
	}
	public void setCusgender(String cusgender) {
		this.cusgender = cusgender;
	}
	public String getCuscontact() {
		return cuscontact;
	}
	public void setCuscontact(String cuscontact) {
		this.cuscontact = cuscontact;
	}
	public String getCuslocation() {
		return cuslocation;
	}
	public void setCuslocation(String cuslocation) {
		this.cuslocation = cuslocation;
	}
	public String getCusorgname() {
		return cusorgname;
	}
	public void setCusorgname(String cusorgname) {
		this.cusorgname = cusorgname;
	}
	public String getCusorgtype() {
		return cusorgtype;
	}
	public void setCusorgtype(String cusorgtype) {
		this.cusorgtype = cusorgtype;
	}
	public Set<AddMilkToCustomerEntity> getCusmilk() {
		return cusmilk;
	}
	public void setCusmilk(Set<AddMilkToCustomerEntity> cusmilk) {
		this.cusmilk = cusmilk;
	}

	
}
