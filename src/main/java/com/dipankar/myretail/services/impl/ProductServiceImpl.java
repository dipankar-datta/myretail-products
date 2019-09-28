package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Product;
import com.dipankar.myretail.data.repositories.ProductRepository;
import com.dipankar.myretail.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public Set<Product> list() {
        return this.productRepository.productsList();
    }

    @Override
    public Product save(Product p){
        return this.productRepository.save(p);
    }

    @Override
    public <S extends Product> Iterable<S> saveAll(Iterable<S> items) {
        return productRepository.saveAll(items);
    }

    @Override
    public void delete(Product item) {
        productRepository.delete(item);
    }

    @Override
    public Optional<Product> getById(Long id) {
        return productRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        productRepository.deleteById(id);
    }
}
