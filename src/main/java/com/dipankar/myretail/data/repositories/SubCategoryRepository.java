package com.dipankar.myretail.data.repositories;


import com.dipankar.myretail.data.entities.SubCategory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface SubCategoryRepository extends CrudRepository<SubCategory, Long> {

    @Query("select s from SubCategory s")
    Set<SubCategory> list();
}
