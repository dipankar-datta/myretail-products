package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Segment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface SegmentRepository extends CrudRepository<Segment, Long> {

    @Query("select s from Segment s")
    Set<Segment> list();
}
