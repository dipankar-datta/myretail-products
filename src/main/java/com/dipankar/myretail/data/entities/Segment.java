package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "segments")
@Data
public class Segment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    @NotEmpty(message = "Segment name is required")
    @Size(min = 2, max = 100, message = "Segment name should be between 2 to 100 characters")
    private String name;
}
