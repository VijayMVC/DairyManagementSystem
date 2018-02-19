package com.mentor.admin.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mentor.admin.dao.CustomerDao;
import com.mentor.admin.entity.AddMilkToCustomerEntity;
import com.mentor.admin.entity.CustomerEntity;
import com.mentor.hibernate.resource.HibernateUtil;

public class CustomerModel implements CustomerDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int addCustomer(CustomerEntity cus)
	{

		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=(Transaction) session.beginTransaction();
		session.save(cus);
		t.commit();
		session.close();
		return 1;

	}

	public List<CustomerEntity> getCustomers(){  

		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from CustomerEntity");
		List<CustomerEntity> list=q.list();
		t.commit();
		session.close();
		return list;
	}///getEmployee ends


	public List<CustomerEntity> getCustomersById(int id){  
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from CustomerEntity where CID='"+id+"'");
		List<CustomerEntity> list=q.list();
		t.commit();
		session.close();
		return list;
	}///getEmployee ends

	public int delete(int id)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("delete from CustomerEntity where CID='"+id+"'");
		q.executeUpdate();
		session.close();
		return 1;
	}

	public int updateCustomer(CustomerEntity cus)
	{
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.update(cus);
		t.commit();
		session.close();
		return 1;

	}

	@Override
	public int addMilkWithCustomer(AddMilkToCustomerEntity cusmilk) {

		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t=session.beginTransaction();
		session.save(cusmilk);
		t.commit();
		session.close();
		return 1;

	}




}
