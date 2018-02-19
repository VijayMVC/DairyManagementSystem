package com.mentor.admin.model;
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import com.mentor.admin.dao.SupplierDao;
import com.mentor.admin.entity.AddMilkToSupplierEntity;
import com.mentor.admin.entity.SupplierEntity;
import com.mentor.admin.entity.SupplierReportBeans;
import com.mentor.hibernate.resource.HibernateUtil;

public class SupplierModel implements SupplierDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int addSupplier(SupplierEntity spl)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=(Transaction) session.beginTransaction();
		session.save(spl);
		t.commit();
		session.close();
		return 1;

	}
	public List<SupplierEntity> getSuppliers(){  
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from SupplierEntity");
		List<SupplierEntity> list=q.list();
		t.commit();
		session.close();
		return list;
	}///getEmployee ends
	public List<SupplierEntity> getSupplierById(SupplierEntity spl)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from SupplierEntity where SID='"+spl.getSplid()+"'");
		List<SupplierEntity> list=q.list();
		t.commit();
		session.close();
		return list;

	}
	public int updateSuppliers(SupplierEntity spl)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.update(spl);
		t.commit();
		session.close();
		return 1;
	}

	public int deleteSuppliers(SupplierEntity spl)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.delete(spl);
		t.commit();
		session.close();
		return 1;
	}
	public int addMilkWithWithSupp(AddMilkToSupplierEntity milk)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.save(milk);
		t.commit();
		session.close();
		return 1;
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
	/*	public static void getdata()
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
	    Query q=session.createQuery("select splfname,spllname,pdname,pdquantity from SupplierEntity inner join AddMilkToSupplierEntity where SupplierEntity.splid=AddMilkToSupplierEntity.splid");
	    List<Object> list=q.list();
	    for(Object ob:list)
	    {

	    }
		t.commit();
		session.close();

	}
	 */





}
