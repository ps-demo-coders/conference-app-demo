package com.globomantics.conference.services;

import com.globomantics.conference.data.dtos.TicketPriceDto;
import com.globomantics.conference.data.mappers.TicketPriceMapper;
import com.globomantics.conference.data.repositories.TicketPriceRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class TicketPriceService {

    private final TicketPriceRepository repository;
    private final TicketPriceMapper mapper;

    public TicketPriceService(TicketPriceRepository repository, TicketPriceMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public List<TicketPriceDto> findAll() {
        return repository.findAll().stream().map(mapper::toDto).collect(Collectors.toList());
    }
}
