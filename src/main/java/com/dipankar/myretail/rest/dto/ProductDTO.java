package com.dipankar.myretail.rest.dto;

import com.dipankar.myretail.data.entities.Product;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ProductDTO {
    private String pid;
    private String category;
    private String subCategory;
    private String segment;
    private String name;
    private String description;
    private LocalDateTime creationTime;
    private LocalDateTime updationTime;

    public ProductDTO(
            String pid,
            String category,
            String subCategory,
            String segment,
            String name,
            String description,
            LocalDateTime creationTime,
            LocalDateTime updationTime) {
        this.pid = pid;
        this.category = category;
        this.subCategory = subCategory;
        this.segment = segment;
        this.name = name;
        this.description = description;
        this.creationTime = creationTime;
        this.updationTime = updationTime;
    }

    public static ProductDTO convertEntityToDto(Product product) {
        return new ProductDTO(
                product.getPublicId(),
                product.getCategory().getName(),
                product.getSubcategory().getName(),
                product.getSegment().getName(),
                product.getName(),
                product.getDescription(),
                product.getCreationTime(),
                product.getUpdationTime()
        );
    }
}
