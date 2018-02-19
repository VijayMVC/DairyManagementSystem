package com.mentor.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mentor.admin.entity.AddMilkToCustomerEntity;
import com.mentor.admin.entity.CustomerEntity;
import com.mentor.admin.model.CustomerModel;


@Controller
public class Customer {
	@Autowired
	CustomerModel dao;
	@RequestMapping(value="/view/addcustomer",method=RequestMethod.POST)
	public void addCustomer(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("cus") CustomerEntity cus) throws IOException
	{
		int sucess=dao.addCustomer(cus);
		if(sucess>0)
		{
			
		     res.sendRedirect("../sucesserror/customersucess.jsp");
		}
	}
	@RequestMapping(value="/view/customerlist",method=RequestMethod.GET)
	public ModelAndView showCustomer() throws IOException, ServletException
	{
		System.out.println("Hello Customer");
		List<CustomerEntity> cus=dao.getCustomers();
		return new ModelAndView("customerlist","cus",cus);
	}
	
	@RequestMapping(value="/view/customerlist1",method=RequestMethod.GET)
	public ModelAndView getCustomerByID(@RequestParam("cid") String cid) throws NumberFormatException, IOException, ServletException
	{
		
		List<CustomerEntity> cus=dao.getCustomersById(Integer.parseInt(cid));
		return new ModelAndView("updatecustomer","cus",cus);
	}
	
	@RequestMapping(value="/view/customerlist2",method=RequestMethod.GET)
	public ModelAndView getCustomerForUpdate(@RequestParam("cid") String cid) throws NumberFormatException, IOException, ServletException
	{
		
		List<CustomerEntity> cus=dao.getCustomersById(Integer.parseInt(cid));
		return new ModelAndView("milkexport","cus",cus);
	}
	
	@RequestMapping(value="/view/updatecustomer",method=RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("cus") CustomerEntity cus)
	{
	    int status=dao.updateCustomer(cus);
	    if(status>0)
	    {
	    	
	    	List<CustomerEntity> cus1=dao.getCustomers();
			return new ModelAndView("customerlist","cus",cus1);
	    }
	    else
	    {
	    	return null;
	    }
		
	}
	@RequestMapping(value="/view/deleteCustomer",method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("cid") String id) throws IOException, ServletException
	{
		System.out.println("Hello delete customer");
		int status=dao.delete(Integer.parseInt(id));
		if(status>0)
		{
			List<CustomerEntity> cus=dao.getCustomers();
			return new ModelAndView("customerlist","cus",cus);
		}
		else
		{
			return null;
		}
		
	}
	
	@RequestMapping(value="/view/addmilkwithcustomer",method=RequestMethod.POST)
	public ModelAndView addMilkWithCustomer(@ModelAttribute("cus") AddMilkToCustomerEntity cusmilk,HttpServletRequest req) throws IOException, ServletException
	{
	/***********************************************************************************/
		 CustomerEntity s1=null;
	
	     List<CustomerEntity> list= dao.getCustomersById(Integer.parseInt(req.getParameter("cid")));
	     for (int i = 0; i < list.size(); i++) {
			s1 = list.get(i);
		 }
	     cusmilk.setCustomer(s1);///milk sang supplier add vayae ko xa
   /**************This is the important condition****************************************/
	/*  HashSet<AddMilkToSupplierEntity> set= new HashSet<AddMilkToSupplierEntity>();
	    set.add(s);
	    s1.setSupplymilk(set);*/
    /**********************************************************************************/
       int status=dao.addMilkWithCustomer(cusmilk);
       if(status>0)
       {
    		List<CustomerEntity> cus1=dao.getCustomers();
			return new ModelAndView("customerlist","cus",cus1);
       }
       else
       {
    	   return null;
       }
	}

}
