
package com.mentor.admin.controller;
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

import com.mentor.admin.entity.AddMilkToSupplierEntity;
import com.mentor.admin.entity.SupplierEntity;
import com.mentor.admin.entity.SupplierReportBeans;
import com.mentor.admin.model.SupplierModel;

@Controller
public class Supplier {
	@Autowired
	SupplierModel dao;
	
	@RequestMapping(value="/view/addsupplier",method=RequestMethod.POST)
	public void addSupplier(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("spl") SupplierEntity spl,HttpSession session) throws IOException
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
	    List<SupplierEntity> list=dao.getSuppliers();
		return new ModelAndView("supplierlist","list",list);
	
	}
	@RequestMapping(value="/view/update",method=RequestMethod.GET)
	public ModelAndView updateShow(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		 String id=req.getParameter("splid");
	     SupplierEntity b1=new SupplierEntity();
	     b1.setSplid(new Integer(id));
	     List<SupplierEntity> list= dao.getSupplierById(b1);
	 	return new ModelAndView("updatesupplier","list",list);
		
	}
	@RequestMapping(value="/view/updte",method=RequestMethod.POST)
	public void update(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("spl") SupplierEntity spl) throws IOException,ServletException
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
     SupplierEntity b1=new SupplierEntity();
     b1.setSplid(new Integer(id));
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
	public ModelAndView getSupplierById(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		 String id=req.getParameter("splid");
	     SupplierEntity b1=new SupplierEntity();
	     b1.setSplid(new Integer(id));
	     List<SupplierEntity> list= dao.getSupplierById(b1);
	 	return new ModelAndView("milkimport","list",list);
	}
	
	
	@RequestMapping(value="/view/addmilk",method=RequestMethod.POST)
    public void addMilkWithSuppliers(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("s") AddMilkToSupplierEntity milk) throws IOException,ServletException
    {
	  /************************************************************************************************/
		 SupplierEntity s1=null;
		 String id=req.getParameter("splid");
	     SupplierEntity b1=new SupplierEntity();
	     b1.setSplid(new Integer(id));
	     List<SupplierEntity> list= dao.getSupplierById(b1);
	     for (int i = 0; i < list.size(); i++) {
			s1 = list.get(i);
		 }
	     milk.setSupplier(s1);///milk sang supplier add vayae ko xa
	     /**************This is the important condition****************************************/
	/*  HashSet<AddMilkToSupplierEntity> set= new HashSet<AddMilkToSupplierEntity>();
	    set.add(s);
	    s1.setSupplymilk(set);*/
	 
	/***************************************************************************************************/	
	  int status=dao.addMilkWithWithSupp(milk);
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
	public ArrayList<SupplierEntity> testGson()
	{
	   SupplierEntity sup1=new SupplierEntity();
	   SupplierEntity sup2=new SupplierEntity();
	  /// SupplierBeans sup3=new SupplierBeans();
	/*   sup1.setSplid("1");
	   sup1.setSplfname("Ram");
	   sup2.setSplid("2")*/;
	   sup2.setSplfname("Mukesh");
	   ArrayList<SupplierEntity> list=new ArrayList<SupplierEntity>();
	   list.add(sup1);
	   list.add(sup2);
	   return list;
	   
	   
	   
	 
	   
	}
	
	

}
