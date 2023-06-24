package com.protech.ifashion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.ifashion.dto.product;

public interface ProductRepository extends JpaRepository<product, Integer>
{

}
