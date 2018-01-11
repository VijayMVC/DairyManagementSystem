package com.mentor.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mentor.beans.AddProductBeans;


public class ProductDao {
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	} 
	public int addproduct(AddProductBeans pd)
	{
		String sql="insert into product(prd_id,pd_code,pd_name,pd_rate,pd_date,pd_quantity) values(null,'"+pd.getPdcode()+"','"+pd.getPdname()+"','"+pd.getPdrate()+"','"+pd.getPddate()+"','"+pd.getPdquantity()+"')";
		return template.update(sql);
	}
	public  List<AddProductBeans>  selectAllProduct()
	{
	    return template.query("select * from product",new RowMapper<AddProductBeans>(){  
	        public AddProductBeans mapRow(ResultSet rs, int row) throws SQLException {  
	            AddProductBeans p=new AddProductBeans();  
	            p.setPdcode(rs.getString(2));
	            p.setPdname(rs.getString(3));
	            p.setPdrate(rs.getString(4));
	            p.setPddate(rs.getString(5));
	            p.setPdquantity(rs.getString(6));
	            
	            return p;  
	        }  
	    }); 
	}
	
	public static void main(String args[])
	{
		ProductDao dao=new ProductDao();
		List<AddProductBeans> list=dao.selectAllProduct();
		for(AddProductBeans a:list)
		{
			System.out.println(a.getPdname());
		}
	}

}
