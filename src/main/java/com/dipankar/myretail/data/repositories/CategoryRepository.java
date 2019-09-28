package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> {

    @Query("select c from Category c")
    Set<Category> list();
}
