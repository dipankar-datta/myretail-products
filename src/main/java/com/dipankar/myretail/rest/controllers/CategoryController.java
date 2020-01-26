package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Category;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;
import java.util.Set;

@RestController
@RequestMapping("/categories")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<Category> list() {
        return categoryService.list();
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Category getById(@PathVariable Long id) {
        Optional<Category> categoryOptional = categoryService.getById(id);
        return categoryOptional.isPresent() ? categoryOptional.get() : null;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public Category create(@Valid @RequestBody Category category) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(category.getId());
        return categoryService.save(category);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public Category update(@Valid @RequestBody Category category) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(category.getId());
        return categoryService.save(category);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(@RequestBody Category category) {
        categoryService.delete(category);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteById(@PathVariable Long id) {
        categoryService.deleteById(id);
    }

}
