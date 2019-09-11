package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.TicketPriceDto;
import com.globomantics.conference.data.entities.TicketPrice;
import org.mapstruct.Mapper;

@Mapper(uses = {TicketTypeMapper.class, PricingCategoryMapper.class})
public interface TicketPriceMapper {

    TicketPriceDto toDto(TicketPrice entity);

    TicketPrice toEntity(TicketPriceDto dto);
}
