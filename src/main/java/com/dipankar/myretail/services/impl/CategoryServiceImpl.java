package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Category;
import com.dipankar.myretail.data.repositories.CategoryRepository;
import com.dipankar.myretail.services.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public Set<Category> list() {
        return categoryRepository.list();
    }

    @Override
    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    @Override
    public <S extends Category> Iterable<S> saveAll(Iterable<S> items) {
        return categoryRepository.saveAll(items);
    }

    @Override
    public void delete(Category item) {
        categoryRepository.delete(item);
    }

    @Override
    public Optional<Category> getById(Long id) {
        return categoryRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        categoryRepository.deleteById(id);
    }
}
