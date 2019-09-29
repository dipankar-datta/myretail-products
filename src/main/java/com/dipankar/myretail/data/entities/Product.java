package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Entity
@Table(name = "products")
@Data
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "public_id")
    private String publicId;

    @OneToOne
    @JoinColumn(name = "segment")
    @NotEmpty(message = "Product segment is required")
    private Segment segment;

    @OneToOne
    @JoinColumn(name = "category")
    @NotEmpty(message = "Product category ")
    private Category category;

    @OneToOne
    @JoinColumn(name = "subcategory")
    private SubCategory subcategory;

    @Column(name = "name")
    @NotNull(message = "Product name cannot be empty")
    @Size(min = 5, max = 200, message = "Product name should be between 5 and 200 characters")
    private String name;

    @Column(name = "description")
    @NotNull(message = "Product description cannot be empty")
    @Size(min = 10, max = 500, message = "Product description should be between 10 and 500 characters")
    private String description;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "updation_time")
    private LocalDateTime updationTime;
}
