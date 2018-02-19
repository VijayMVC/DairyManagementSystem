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

import com.mentor.admin.entity.ProductEntity;
import com.mentor.admin.model.ProductModel;

@Controller
public class Product {
	@Autowired
    ProductModel dao;
	@RequestMapping(value="/view/addproduct",method=RequestMethod.POST)
	public void addProduct(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("addproduct") ProductEntity addproduct) throws IOException,ServletException 
	{
		int sucess=dao.addproduct(addproduct);
		if(sucess>0)
		{
			System.out.print("Your data sucessfully inserted");
			res.sendRedirect("../sucesserror/addproductsucess.jsp");
		}
	}
	@RequestMapping(value="/view/showdata",method=RequestMethod.GET)
	public void get()
	{
		
		List<ProductEntity> list=dao.selectAllProduct();
		for(ProductEntity a:list)
		{
			System.out.println(a.getPdname());
		}
		System.out.println("Hello Mukesh");
		
	}


}
