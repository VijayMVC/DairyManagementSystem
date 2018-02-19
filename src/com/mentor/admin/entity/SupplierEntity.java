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
@Table(name="Supplier")
public class SupplierEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="SID",nullable=false,updatable=false)
	private Integer splid;
	@Column
	private String splfname,spllname,splemail,splgender,splcontact,spllocation;
	@OneToMany(mappedBy="supplier",cascade=CascadeType.ALL)
	private Set<AddMilkToSupplierEntity> supplymilk;
	public Integer getSplid() {
		return splid;
	}
	public void setSplid(Integer splid) {
		this.splid = splid;
	}
	public String getSplfname() {
		return splfname;
	}
	public void setSplfname(String splfname) {
		this.splfname = splfname;
	}
	public String getSpllname() {
		return spllname;
	}
	public void setSpllname(String spllname) {
		this.spllname = spllname;
	}
	public String getSplemail() {
		return splemail;
	}
	public void setSplemail(String splemail) {
		this.splemail = splemail;
	}
	public String getSplgender() {
		return splgender;
	}
	public void setSplgender(String splgender) {
		this.splgender = splgender;
	}
	public String getSplcontact() {
		return splcontact;
	}
	public void setSplcontact(String splcontact) {
		this.splcontact = splcontact;
	}
	public String getSpllocation() {
		return spllocation;
	}
	public void setSpllocation(String spllocation) {
		this.spllocation = spllocation;
	}
	public Set<AddMilkToSupplierEntity> getSupplymilk() {
		return supplymilk;
	}
	public void setSupplymilk(Set<AddMilkToSupplierEntity> supplymilk) {
		this.supplymilk = supplymilk;
	}



}
