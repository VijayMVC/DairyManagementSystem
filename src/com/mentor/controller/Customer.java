package com.mentor.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mentor.Dao.CustomerDao;
import com.mentor.beans.CustomerBeans;

@Controller
public class Customer {
	@Autowired
	CustomerDao dao;
	@RequestMapping(value="/view/addcustomer",method=RequestMethod.POST)
	public void addCustomer(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("cus") CustomerBeans cus)
	{
		int sucess=dao.addCustomer(cus);
		if(sucess>0)
		{
			System.out.println("You are sucessfully inserted customer");
		}
	}

}
