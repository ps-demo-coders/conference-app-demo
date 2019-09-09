package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.DiscountCodeDto;
import com.globomantics.conference.data.entities.DiscountCode;
import org.mapstruct.Mapper;

@Mapper
public interface DiscountCodeMapper {

    DiscountCodeDto toDto(DiscountCode entity);

    DiscountCode toEntity(DiscountCodeDto dto);
}
