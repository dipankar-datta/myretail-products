package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.SubCategory;
import com.dipankar.myretail.data.repositories.SubCategoryRepository;
import com.dipankar.myretail.services.SubCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class SubCategoryServiceImpl implements SubCategoryService {

    @Autowired
    SubCategoryRepository subCategoryRepository;

    @Override
    public Set<SubCategory> list() {
        return subCategoryRepository.list();
    }

    @Override
    public SubCategory save(SubCategory item) {
        return subCategoryRepository.save(item);
    }

    @Override
    public <S extends SubCategory> Iterable<S> saveAll(Iterable<S> items) {
        return subCategoryRepository.saveAll(items);
    }

    @Override
    public Optional<SubCategory> getById(Long id) {
        return subCategoryRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        subCategoryRepository.deleteById(id);
    }

    @Override
    public void delete(SubCategory item) {
        subCategoryRepository.delete(item);
    }
}
