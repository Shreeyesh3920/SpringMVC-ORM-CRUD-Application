package com.Mvc.Services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Mvc.DAO.ProductCRUDdao;
import com.Mvc.Entities.Product;



@Service
public class ProductService {

	@Autowired
	private ProductCRUDdao productdao;
	public int createProduct(Product product) 
	{
		return this.productdao.createProduct(product);
	}
	
	
	

}
