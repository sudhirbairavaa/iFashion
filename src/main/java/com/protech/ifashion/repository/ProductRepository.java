package com.protech.ifashion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.ifashion.dto.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>
{

}
