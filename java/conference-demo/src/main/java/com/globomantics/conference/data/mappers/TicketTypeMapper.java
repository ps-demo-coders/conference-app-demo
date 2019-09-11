package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.TicketTypeDto;
import com.globomantics.conference.data.entities.TicketType;
import org.mapstruct.Mapper;

@Mapper
public interface TicketTypeMapper {

    TicketTypeDto toDto(TicketType entity);

    TicketType toEntity(TicketTypeDto dto);
}
