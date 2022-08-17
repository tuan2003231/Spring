package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>{

	@Query("from Product where id >= :start and id <= :end")
	public List<Product> findRange(@Param("start") int start , @Param("end")int end);
}
