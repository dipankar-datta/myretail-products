package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Segment;
import com.dipankar.myretail.data.repositories.SegmentRepository;
import com.dipankar.myretail.services.SegmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class SegmentServiceImpl implements SegmentService {

    @Autowired
    SegmentRepository segmentRepository;

    @Override
    public Set<Segment> list() {
        return segmentRepository.list();
    }

    @Override
    public Segment save(Segment item) {
        return segmentRepository.save(item);
    }

    @Override
    public <S extends Segment> Iterable<S> saveAll(Iterable<S> items) {
        return segmentRepository.saveAll(items);
    }

    @Override
    public Optional<Segment> getById(Long id) {
        return segmentRepository.findById(id);
    }

    @Override
    public void delete(Segment item) {
        segmentRepository.delete(item);
    }

    @Override
    public void deleteById(Long id) {
        segmentRepository.deleteById(id);
    }
}
