package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Product;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.rest.dto.ProductDTO;
import com.dipankar.myretail.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<ProductDTO> productsList() {
        return this.productService.list()
                .stream()
                .map(ProductDTO::convertEntityToDto).collect(Collectors.toSet());
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Product getById(Long id) {
        return productService.getById(id).get();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@Valid @RequestBody Product product) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(product.getId());
        product.setCreationTime(LocalDateTime.now());
        product.setUpdationTime(LocalDateTime.now());
        this.productService.save(product);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public void update(@Valid @RequestBody Product product) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(product.getId());
        if (product.getCreationTime() == null) product.setCreationTime(LocalDateTime.now());
        product.setUpdationTime(LocalDateTime.now());
        this.productService.save(product);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteById(Long id) {
       productService.deleteById(id);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(Product product) {
        productService.delete(product);
    }


}
