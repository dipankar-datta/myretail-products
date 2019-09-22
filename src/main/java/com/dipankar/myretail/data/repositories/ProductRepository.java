package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {

    @Query("select p from Product p")
    Set<Product> productsList();
}
