package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "subcategories")
@Data
public class SubCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "Sub-category code is required")
    @Size(max = 10, min = 2, message = "Sub-category code should be between 2 and 10 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "Sub-category name is required")
    @Size(max = 100, min = 10, message = "Sub-category name should be between 10 and 100 characters")
    private String name;
}
