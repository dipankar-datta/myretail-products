package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Product;
import com.dipankar.myretail.rest.dto.ProductDTO;
import com.dipankar.myretail.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<ProductDTO> productsList() {
        return this.productService.productList()
                .stream()
                .map(ProductDTO::convertEntity).collect(Collectors.toSet());
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void save(Product product) {
        if (product.getId() == null) {
            product.setPublicId(UUID.randomUUID().toString());
            this.productService.save(product);
        }
    }
}
