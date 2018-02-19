package com.mentor.hibernate.resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static  SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static boolean setSessionFactory() {
		try
		{
			sessionFactory=new Configuration().configure("com/mentor/hibernate/resource/hibernate.cfg.xml").buildSessionFactory();
			return true;
		
		}catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		
		}
	}


}
