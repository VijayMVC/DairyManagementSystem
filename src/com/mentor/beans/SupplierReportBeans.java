package com.mentor.beans;

public class SupplierReportBeans {
	private String splid,splfname,spllname,splgender,splcontact,spllocation,pdname,pdimpdate,pdquantity,totalamount;

public void calculateDate()
  {
		long millis=System.currentTimeMillis(); 
		java.sql.Date date=new java.sql.Date(millis);  
		 
		String p=date.toString();
		String s1=p.substring(0,4);
		int year=Integer.parseInt(s1);
		String s2=p.substring(5,7);
		int month=Integer.parseInt(s2);
		String s3=p.substring(8,10); 
		int day=Integer.parseInt(s3);
		/////////////////////////////////////////////////////////
		System.out.println("Year:"+year);
		System.out.println("Moth:"+month);
		System.out.println("Day:"+day);
	
		//////////////////////////////////////////////////////////
  }
public String getSplid() {
	return splid;
}
public void setSplid(String splid) {
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
public String getTotalamount() {
	return totalamount;
}
public void setTotalamount(String totalamount) {
	this.totalamount = totalamount;
}


}
