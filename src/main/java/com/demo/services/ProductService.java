package com.demo.services;

import java.util.List;

import com.demo.models.Product;

public interface ProductService {
	public List<Product> findRange(int start , int end);
}
