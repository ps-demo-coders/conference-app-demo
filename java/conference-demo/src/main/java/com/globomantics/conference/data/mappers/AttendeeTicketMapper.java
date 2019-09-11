package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.AttendeeTicketDto;
import com.globomantics.conference.data.entities.AttendeeTicket;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(uses = {AttendeeMapper.class, TicketPriceMapper.class, DiscountCodeMapper.class})
public interface AttendeeTicketMapper {

    AttendeeTicketDto toDto(AttendeeTicket entity);

    @Mapping(target = "workshops", ignore = true)
    AttendeeTicket toEntity(AttendeeTicketDto dto);
}
