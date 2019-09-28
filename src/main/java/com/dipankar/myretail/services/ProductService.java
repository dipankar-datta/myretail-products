package com.dipankar.myretail.services;

import com.dipankar.myretail.data.entities.Product;
import com.dipankar.myretail.data.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;


public interface ProductService extends BasicCrudService<Product>{
}
