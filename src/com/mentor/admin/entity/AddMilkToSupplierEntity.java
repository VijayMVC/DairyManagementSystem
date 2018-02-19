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
@Table(name="MilkToSupplier")
public class AddMilkToSupplierEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID",updatable=false,nullable=false)
	Integer supprecid;
	@Column
	private String pdname,pdimpdate,pdquantity,pdfatquan,pdfatlit,totamount;
	@ManyToOne
	@JoinColumn(name="SID")
	private SupplierEntity supplier;
	public Integer getSupprecid() {
		return supprecid;
	}
	public void setSupprecid(Integer supprecid) {
		this.supprecid = supprecid;
	}
	public String getPdname() {
		return pdname;
	}
	public void setPdname(String pdname) {
		this.pdname = pdname;
	}
	public String getPdimpdate() {
		return pdimpdate;
	}
	public void setPdimpdate(String pdimpdate) {
		this.pdimpdate = pdimpdate;
	}
	public String getPdquantity() {
		return pdquantity;
	}
	public void setPdquantity(String pdquantity) {
		this.pdquantity = pdquantity;
	}
	public String getPdfatquan() {
		return pdfatquan;
	}
	public void setPdfatquan(String pdfatquan) {
		this.pdfatquan = pdfatquan;
	}
	public String getPdfatlit() {
		return pdfatlit;
	}
	public void setPdfatlit(String pdfatlit) {
		this.pdfatlit = pdfatlit;
	}

	public String getTotamount() {
		return totamount;
	}
	public void setTotamount(String totamount) {
		this.totamount = totamount;
	}
	public SupplierEntity getSupplier() {
		return supplier;
	}
	public void setSupplier(SupplierEntity supplier) {
		this.supplier = supplier;
	}



}
