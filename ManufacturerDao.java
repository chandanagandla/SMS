package com.virtusa.dao;
	import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.Transaction;
	import com.virtusa.beans.*;
	import com.virtusa.dao.ManufacturerMapper;
	import org.hibernate.cfg.Configuration;		
		import java.util.List;
		import org.springframework.jdbc.core.JdbcTemplate;
		public class ManufacturerDao {
			  
			JdbcTemplate template;
			public void setTemplate(JdbcTemplate template){
				this.template=template;
			}
			public int insert(Manufacturer Man){
				String sql="insert into Manufacturer(id,name,email,phonenumber)values(?,?,?,?)";
				int ans=template.update(sql,Man.getId(),Man.getName(),Man.getEmail(),Man.getPhonenumber());
				return ans;
			}

			public int update(Manufacturer man){
				String sql="update Manufcaturer set name=?, email=?, phonenumber=? where id=?";
				int ans=template.update(sql,man.getName(),man.getEmail(),man.getPhonenumber(),man.getId());
				return ans;
			}
			public int delete(int id){
				String sql="delete from Manufacturer where id=?";
				return template.update(sql,id);
			}
			public Manufacturer getId(int id){
				String sql="select * from Manufacturer where id=?";
				Manufacturer man=template.queryForObject(sql,new Object[]{id},new ManufacturerMapper());
				
				return man;
			}
			
			public List<Manufacturer> getManufacturerDetails(){
				String sql="select * from Manufacturer";
				List<Manufacturer>manList=template.query(sql,new ManufacturerMapper());
				return manList;
			}
			
			
			
		}



