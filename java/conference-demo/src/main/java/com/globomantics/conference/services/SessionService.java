package com.globomantics.conference.services;

import com.globomantics.conference.data.dtos.SessionDto;
import com.globomantics.conference.data.mappers.SessionMapper;
import com.globomantics.conference.data.repositories.SessionRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
public class SessionService {

    private final SessionRepository repository;
    private final SessionMapper mapper;

    public SessionService(SessionRepository repository, SessionMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public List<SessionDto> findAll() {
        return repository.findAll().stream().map(mapper::toDto).collect(Collectors.toList());
    }

    public Optional<SessionDto> findById(int id) {
        return repository.findById(id).map(mapper::toDto);
    }
}
