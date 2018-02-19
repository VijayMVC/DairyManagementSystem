package com.mentor.admin.dao;

import java.util.List;

import com.mentor.admin.entity.AddMilkToCustomerEntity;
import com.mentor.admin.entity.CustomerEntity;

public interface CustomerDao {
	
	public int addCustomer(CustomerEntity cus);
	public List<CustomerEntity> getCustomers();
	public List<CustomerEntity> getCustomersById(int id);
	public int delete(int id);
	public int updateCustomer(CustomerEntity cus);
	public int addMilkWithCustomer(AddMilkToCustomerEntity cus);

}
