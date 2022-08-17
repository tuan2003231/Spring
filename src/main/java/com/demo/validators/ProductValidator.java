package com.demo.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.demo.models.Product;

@Component
public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(Product.class);
	}

	@Override
	public void validate(Object object, Errors errors) {
		var product = (Product) object;
		if(product.getPrice() <= 0) {
			errors.rejectValue("price", "product.price.nagitiveNumber");
		}
	}

}
