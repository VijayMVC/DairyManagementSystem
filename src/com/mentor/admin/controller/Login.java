package com.mentor.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mentor.hibernate.resource.HibernateUtil;


@Controller
public class Login {
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public void login(HttpServletResponse res,@RequestParam("email") String email,@RequestParam("pass") String pass,HttpSession session) throws IOException
	{
	   if(email.equals("mk@gmail.com")&&pass.equals("123"))
	   {
		   HibernateUtil.setSessionFactory();
		   session.setAttribute("tsession", pass);
		   res.sendRedirect("index.jsp"); 
	   }
	   else
	   {
		   res.sendRedirect("login.jsp");
	   }
    
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public void userlogout(HttpSession session,HttpServletResponse res) throws IOException
	{
		System.out.println("Hello logout");
		session.invalidate();
		res.sendRedirect("login.jsp");
		
	}

}
