package com.mentor.admin.dao;

import java.util.List;

import com.mentor.admin.entity.AddMilkToSupplierEntity;
import com.mentor.admin.entity.SupplierEntity;
import com.mentor.admin.entity.SupplierReportBeans;

public interface SupplierDao {
	public int addSupplier(SupplierEntity spl);
	public List<SupplierEntity> getSuppliers();
	public List<SupplierEntity> getSupplierById(SupplierEntity spl);
	public int updateSuppliers(SupplierEntity spl);
	public int deleteSuppliers(SupplierEntity spl);
	public int addMilkWithWithSupp(AddMilkToSupplierEntity milk);
	public List<SupplierReportBeans> getAllMilkSuppliedRecords(SupplierReportBeans spr);
	
	
}
