package com.mentor.Dao;

import java.io.IOException;
import java.sql.ResultSet;  

import java.sql.SQLException;  
import java.util.List;

import javax.servlet.ServletException;

import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import com.mentor.beans.AddMilkWithSupplierBeans;
import com.mentor.beans.SupplierBeans;
import com.mentor.beans.SupplierReportBeans;

public class SupplierDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int addSupplier(SupplierBeans spl)
	{
		String sql="insert into supplier values(null,'"+spl.getSplfname()+"','"+spl.getSpllname()+"','"+spl.getSplemail()+"','"+spl.getSplgender()+"','"+spl.getSplcontact()+"','"+spl.getSpllocation()+"')";
	    return template.update(sql);
	}
	public List<SupplierBeans> getSuppliers() throws IOException,ServletException{  
	    return template.query("select * from supplier",new RowMapper<SupplierBeans>(){  
	        public SupplierBeans mapRow(ResultSet rs, int row) throws SQLException {  
	            SupplierBeans s=new SupplierBeans();  
	            s.setSplid(rs.getString(1));
	            s.setSplfname(rs.getString(2));
	            s.setSpllname(rs.getString(3));
	            s.setSplemail(rs.getString(4));
	            s.setSplgender(rs.getString(5));
	            s.setSplcontact(rs.getString(6));
	            s.setSpllocation(rs.getString(7));
	            return s;  
	        }  
	    }); 
	}///getEmployee ends
	public List<SupplierBeans> updateShow(SupplierBeans spl)
	{
		 return template.query("select * from supplier where spl_id='"+spl.getSplid()+"'",new RowMapper<SupplierBeans>(){  
		        public SupplierBeans mapRow(ResultSet rs, int row) throws SQLException {  
		            SupplierBeans s=new SupplierBeans();  
		            s.setSplid(rs.getString(1));
		            s.setSplfname(rs.getString(2));
		            s.setSpllname(rs.getString(3));
		            s.setSplemail(rs.getString(4));
		            s.setSplgender(rs.getString(5));
		            s.setSplcontact(rs.getString(6));
		            s.setSpllocation(rs.getString(7));
		            return s;  
		        }  
		    }); 
		
	}
	public int updateSuppliers(SupplierBeans spl)
	{
		String sql="UPDATE supplier SET spl_fname='"+spl.getSplfname()+"',spl_lname='"+spl.getSpllname()+"',spl_email='"+spl.getSplemail()+"',spl_gender='"+spl.getSplgender()+"',spl_contact='"+spl.getSplcontact()+"',spl_location='"+spl.getSpllocation()+"' WHERE spl_id='"+spl.getSplid()+"'";
		return template.update(sql);
	}
	
	public int deleteSuppliers(SupplierBeans spl)
	{
		String sql="delete from supplier where spl_id='"+spl.getSplid()+"'";
		return template.update(sql);
	}
	public int addMilkWithWithSupp(AddMilkWithSupplierBeans s)
	{
		String sql="insert into addmilkwithsupplier values(null,'"+s.getPdname()+"','"+s.getPdimpdate()+"','"+s.getPdquantity()+"','"+s.getPdfatquan()+"','"+s.getPdfatlit()+"','"+s.getTotamount()+"','"+s.getSplid()+"')";
		return template.update(sql);
		
	}
	public List<SupplierReportBeans> getAllMilkSuppliedRecords(SupplierReportBeans spr)
	{
		
		 return template.query("select * from supplierwithmilk",new RowMapper<SupplierReportBeans>(){  
		        public SupplierReportBeans mapRow(ResultSet rs, int row) throws SQLException {  
		            SupplierReportBeans s=new SupplierReportBeans();  
		            s.setSplid(rs.getString(1));
		            s.setSplfname(rs.getString(2));
		            s.setSpllname(rs.getString(3));
		            s.setSplgender(rs.getString(4));
		            s.setSplcontact(rs.getString(5));
		            s.setSpllocation(rs.getString(6));
		            s.setPdname(rs.getString(7));
		            s.setPdimpdate(rs.getString(8));
		            s.setPdquantity(rs.getString(9));
		            s.setTotalamount(rs.getString(10));
		            return s;  
		        }  
		    }); 
	}
	
	
	



}
