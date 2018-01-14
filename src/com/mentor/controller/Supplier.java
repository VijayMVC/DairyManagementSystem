
package com.mentor.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mentor.Dao.SupplierDao;
import com.mentor.beans.AddMilkWithSupplierBeans;
import com.mentor.beans.SupplierBeans;
import com.mentor.beans.SupplierReportBeans;

@Controller
public class Supplier {
	@Autowired
	SupplierDao dao;
	
	@RequestMapping(value="/view/addsupplier",method=RequestMethod.POST)
	public void addSupplier(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("spl") SupplierBeans spl,HttpSession session) throws IOException
	{
	 String name=(String) session.getAttribute("tsession");
	 System.out.println(name);
	 int sucess= dao.addSupplier(spl);
	 if(sucess>0)
	 {
		/* List<SupplierBeans> list=dao.getEmployees();
		 return new ModelAndView("supplierlist1","list",list);*/
		/// return new ModelAndView("addsuppliersucess","test",sucess);
		 res.sendRedirect("../sucesserror/addsuppliersucess.jsp");
		 
	 }
	 else
	 {
		res.sendRedirect("error");
	 }
	}
	@RequestMapping(value="/view/supplierlist",method=RequestMethod.GET)
	public ModelAndView showSupplier() throws IOException,ServletException
	{
	    System.out.println("Hello show supplier");
	    List<SupplierBeans> list=dao.getSuppliers();
		return new ModelAndView("supplierlist","list",list);
	
	}
	@RequestMapping(value="/view/update",method=RequestMethod.GET)
	public ModelAndView updateShow(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		 String id=req.getParameter("splid");
	     SupplierBeans b1=new SupplierBeans();
	     b1.setSplid(id);
	     List<SupplierBeans> list= dao.updateShow(b1);
	 	return new ModelAndView("updatesupplier","list",list);
		
	}
	@RequestMapping(value="/view/updte",method=RequestMethod.POST)
	public void update(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("spl") SupplierBeans spl) throws IOException,ServletException
	{
	     int status= dao.updateSuppliers(spl);
	     if(status>0)
	     {
	    	 System.out.println("Sucess");
	    	 res.sendRedirect("../sucesserror/supplierupdatesucess.jsp");
	     }
	     else
	     {
	    	 System.out.println("Not sucess");
	     }
		///res.sendRedirect("../updateform/updatesupplier.jsp");
	}
	@RequestMapping(value="/view/delete",method=RequestMethod.GET)
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
     String id=req.getParameter("splid");
     SupplierBeans b1=new SupplierBeans();
     b1.setSplid(id);
     int status= dao.deleteSuppliers(b1);
     if(status>0)
     {
      res.sendRedirect("supplierlist.dairy");
     }
     else
     {
    	 System.out.println("Not sucess");
     }
     
	}////delete function ends
	@RequestMapping(value="/view/addmilkshow",method=RequestMethod.GET)
	public ModelAndView addMilkWithShow(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		 String id=req.getParameter("splid");
	     SupplierBeans b1=new SupplierBeans();
	     b1.setSplid(id);
	     List<SupplierBeans> list= dao.updateShow(b1);
	 	return new ModelAndView("milkimport","list",list);
	}
	@RequestMapping(value="/view/addmilk",method=RequestMethod.POST)
    public void addMilkWithSuppliers(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("s") AddMilkWithSupplierBeans s) throws IOException,ServletException
    {
	  int status=dao.addMilkWithWithSupp(s);
	  if(status>0)
	  {
		  res.sendRedirect("../sucesserror/addmilksucess.jsp");
	  }
    }
	@RequestMapping(value="/view/supplierreport",method=RequestMethod.GET)
	public ModelAndView showAllMilkRecordOfSupplier(@ModelAttribute("spr") SupplierReportBeans spr)
	{
		  List<SupplierReportBeans> list=dao.getAllMilkSuppliedRecords(spr);
		  for(SupplierReportBeans s:list)
		  {
			  System.out.println( "H1:"+s.getSplfname());
		  }
		  return new ModelAndView("monthlyreport","list",list);
	}
	@ResponseBody
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public ArrayList<SupplierBeans> testGson()
	{
	   SupplierBeans sup1=new SupplierBeans();
	   SupplierBeans sup2=new SupplierBeans();
	  /// SupplierBeans sup3=new SupplierBeans();
	   sup1.setSplid("1");
	   sup1.setSplfname("Ram");
	   sup2.setSplid("2");
	   sup2.setSplfname("Mukesh");
	   ArrayList<SupplierBeans> list=new ArrayList<SupplierBeans>();
	   list.add(sup1);
	   list.add(sup2);
	   return list;
	   
	   
	   
	 
	   
	}
	
	

}
