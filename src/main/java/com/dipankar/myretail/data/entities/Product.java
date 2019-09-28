package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
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
    private Segment segment;

    @OneToOne
    @JoinColumn(name = "category")
    private Category category;

    @OneToOne
    @JoinColumn(name = "subcategory")
    private SubCategory subcategory;

    @Column(name = "name")
    @NotNull(message = "Product name cannot be empty")
    private String name;

    @Column(name = "description")
    @NotNull(message = "Product description cannot be empty")
    private String description;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "updation_time")
    private LocalDateTime updationTime;
}
