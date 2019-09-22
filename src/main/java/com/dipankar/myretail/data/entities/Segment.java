package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "segments")
@Data
public class Segment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;
}
