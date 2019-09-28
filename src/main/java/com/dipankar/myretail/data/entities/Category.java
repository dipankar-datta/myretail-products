package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "categories")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "Category code is required")
    @Size(max = 10, min = 2, message = "Category code should be between 2 and 10 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "Category name is required")
    @Size(max = 100, min = 10, message = "Category name should be between 10 and 100 characters")
    private String name;

}
