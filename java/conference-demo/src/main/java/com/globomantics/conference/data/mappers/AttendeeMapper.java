package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.AttendeeDto;
import com.globomantics.conference.data.entities.Attendee;
import org.mapstruct.Mapper;

@Mapper
public interface AttendeeMapper {

    AttendeeDto toDto(Attendee entity);

    Attendee toEntity(AttendeeDto dto);
}
