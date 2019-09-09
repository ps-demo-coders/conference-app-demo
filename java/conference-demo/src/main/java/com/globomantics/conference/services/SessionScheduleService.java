package com.globomantics.conference.services;

import com.globomantics.conference.data.dtos.SessionScheduleDto;
import com.globomantics.conference.data.mappers.SessionScheduleMapper;
import com.globomantics.conference.data.repositories.SessionScheduleRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class SessionScheduleService {

    private final SessionScheduleRepository repository;
    private final SessionScheduleMapper mapper;

    public SessionScheduleService(SessionScheduleRepository repository, SessionScheduleMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public List<SessionScheduleDto> findAll() {
        return repository.findAll().stream().map(mapper::toDto).collect(Collectors.toList());
    }
}
