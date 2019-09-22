package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.rest.dto.ProductDTO;
import com.dipankar.myretail.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public Set<ProductDTO> productsList() {
        return this.productService.productList().stream().map(ProductDTO::convertEntity).collect(Collectors.toSet());
    }
}
