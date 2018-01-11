package com.mentor.Dao;



import org.springframework.jdbc.core.JdbcTemplate;

import com.mentor.beans.CustomerBeans;


public class CustomerDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int addCustomer(CustomerBeans cus)
	{
		String sql="insert into customer values(null,'"+cus.getCusfname()+"','"+cus.getCuslname()+"','"+cus.getCusemail()+"','"+cus.getCusgender()+"','"+cus.getCuscontact()+"','"+cus.getCuslocation()+"','"+cus.getCusorgname()+"','"+cus.getCusorgtype()+"')";
	    return template.update(sql);
	
	}
	
/*	@RequestMapping(value="/view/customerlist",method=RequestMethod.GET)
	public ModelAndView showSupplier() throws IOException,ServletException
	{
	    System.out.println("Hello show supplier");
	    List<SupplierBeans> list=dao.getSuppliers();
		return new ModelAndView("supplierlist","list",list);
	
	}*/

}
