package com.protech.ifashion.dto;

import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
@Component
public class product {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
int id;
String category;
String subcategory;
String name;
String brand;
int size;
double price;

@Lob
@Column(columnDefinition = "MEDIUMBLOB")
byte[] image;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public String getSubcategory() {
	return subcategory;
}

public void setSubcategory(String subcategory) {
	this.subcategory = subcategory;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getBrand() {
	return brand;
}

public void setBrand(String brand) {
	this.brand = brand;
}

public int getSize() {
	return size;
}

public void setSize(int size) {
	this.size = size;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public byte[] getImage() {
	return image;
}

public void setImage(byte[] image) {
	this.image = image;
}



}
