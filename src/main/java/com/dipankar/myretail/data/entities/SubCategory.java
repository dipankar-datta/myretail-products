package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "subcategories")
@Data
public class SubCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;
}
