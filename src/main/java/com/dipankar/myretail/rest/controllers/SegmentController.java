package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Segment;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.SegmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

@RestController
@RequestMapping("/segments")
public class SegmentController {

    @Autowired
    private SegmentService segmentService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<Segment> list(){
        return segmentService.list();
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Segment getById(Long id) {
        return segmentService.getById(id).get();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public Segment create(Segment segment) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(segment.getId());
        return segmentService.save(segment);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public Segment update(Segment segment) {
        return segmentService.save(segment);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void deleteById(Segment segment) {
        segmentService.delete(segment);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteById(Long id) {
        segmentService.deleteById(id);
    }
}
