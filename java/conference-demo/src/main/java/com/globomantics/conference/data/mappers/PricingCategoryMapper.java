package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.PricingCategoryDto;
import com.globomantics.conference.data.entities.PricingCategory;
import org.mapstruct.Mapper;

@Mapper
public interface PricingCategoryMapper {

    PricingCategoryDto toDto(PricingCategory entity);

    PricingCategory toEntity(PricingCategoryDto dto);
}
