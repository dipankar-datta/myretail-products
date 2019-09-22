package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
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
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "updation_time")
    private LocalDateTime updationTime;

    @Column(name = "discount_percentage")
    private Float discountPercentage;
}
