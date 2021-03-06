package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Category;
import com.dipankar.myretail.data.entities.SubCategory;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.CategoryService;
import com.dipankar.myretail.services.SubCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Set;

@RestController
@RequestMapping("/subcategories")
public class SubCategoryController {

    @Autowired
    private SubCategoryService subCategoryService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<SubCategory> list() {
        return subCategoryService.list();
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public SubCategory getById(Long id) {
        return subCategoryService.getById(id).get();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public SubCategory create(@Valid @RequestBody SubCategory subCategory) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(subCategory.getId());
        return subCategoryService.save(subCategory);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public SubCategory update(@Valid @RequestBody SubCategory subCategory) {
        return subCategoryService.save(subCategory);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(SubCategory subCategory) {
        subCategoryService.delete(subCategory);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(Long id) {
        subCategoryService.deleteById(id);
    }

}
