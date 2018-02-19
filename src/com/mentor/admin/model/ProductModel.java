package com.mentor.admin.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mentor.admin.entity.ProductEntity;
import com.mentor.hibernate.resource.HibernateUtil;


public class ProductModel {
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	} 
	public int addproduct(ProductEntity pd)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.save(pd);
		t.commit();
		session.close();
		return 1;
	}
	public  List<ProductEntity>  selectAllProduct()
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from Product");
		List<ProductEntity> list=q.list();
		t.commit();
		session.close();
		return list;
	}
	
/*	public static void main(String args[])
	{
		ProductModel dao=new ProductModel();
		List<ProductEntity> list=dao.selectAllProduct();
		for(ProductEntity a:list)
		{
			System.out.println(a.getPdname());
		}
	}*/

}
