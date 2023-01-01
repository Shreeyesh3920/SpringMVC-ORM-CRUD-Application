package com.Mvc.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.Mvc.Entities.Product;

@Component
public class ProductCRUDdao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	//create single product
	public int createProduct(Product product) 
	{
		this.hibernateTemplate.saveOrUpdate(product);
		return 1;
	}
	
	
	//get all products
	public List<Product> allProducts() 
	{
										// Product.class will returns all the objects of this class mapped with database.
		List<Product> products= this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete product
	@Transactional
	public String deleteProduct(int pid) 
	{
		Product product=this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(product);
		return "deleted!";
		
	}
	
	//single product
	public Product getProduct(int pid) 
	{										// we can here use get instead of load
		return this.hibernateTemplate.get(Product.class,pid);
		
	}
		
	@Transactional
	public int updateProduct(Product product) 
	{
		this.hibernateTemplate.update(product);
		return 1;
	}
	
	
}
