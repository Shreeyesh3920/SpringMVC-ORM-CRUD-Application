package com.Mvc.Controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Mvc.DAO.ProductCRUDdao;
import com.Mvc.Entities.Product;

import com.Mvc.Services.ProductService;




@Controller
public class mainController {
	
	
	@Autowired
	private ProductService productservice;
	
	@Autowired
	private ProductCRUDdao productdao;

	@RequestMapping("/index")
	public String index(Model model) 
	{
		
		
		return "index";	
	}
	
	@RequestMapping("/show")
	public String showController(Model model) 
	{
		
		List<Product> pro=productdao.allProducts();
		model.addAttribute("products", pro);
		
		return "show";	
	}
	
	@RequestMapping("/add")
	public String addController() 
	{
	return "addproduct";	
	}

		@RequestMapping(value="addprocess", method=RequestMethod.POST)
		public String ProcessController(@ModelAttribute Product product){
			this.productservice.createProduct(product);
			return "redirect:/show";
		}
		
	@RequestMapping("/delete/{productid}")
	public String deleteHandler(@PathVariable("productid") int id) 
	{
		this.productdao.deleteProduct(id);
		return "redirect:/show";
	}
		
	@RequestMapping("/update/{productid}")
	public String updateForm(@PathVariable("productid")int id,Model model)
	{
		Product product=this.productdao.getProduct(id);
		model.addAttribute("products", product);
		return "update";
	}
	
	
//	@RequestMapping(value="/updateprocess", method=RequestMethod.POST)
//	public String updateController(@ModelAttribute Product product)
//	{
//		this.productdao.updateProduct(product);
//		return "redirect:/show";
//	}
	
	
	
}	
		

	
