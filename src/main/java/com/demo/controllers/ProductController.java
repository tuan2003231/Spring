package com.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.ProductService;

@Controller
@RequestMapping({"","product"})
public class ProductController {

	@Autowired
	@Qualifier("start0")
	private ProductService productService;
	@Autowired
	@Qualifier("start_end")
	private ProductService productService2;
	
	@RequestMapping(value={"","home"},method=RequestMethod.GET)
	public String home(ModelMap modelMap) {
		modelMap.put("products", productService.findRange(3, 5));
		modelMap.put("products2", productService2.findRange(3,5));
		return "product/home";
	}
	
}
