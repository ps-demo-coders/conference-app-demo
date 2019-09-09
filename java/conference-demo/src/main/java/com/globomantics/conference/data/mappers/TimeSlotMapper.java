package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.TimeSlotDto;
import com.globomantics.conference.data.entities.TimeSlot;
import org.mapstruct.Mapper;

@Mapper
public interface TimeSlotMapper {

    TimeSlotDto toDto(TimeSlot entity);

    TimeSlot toEntity(TimeSlotDto dto);
}
