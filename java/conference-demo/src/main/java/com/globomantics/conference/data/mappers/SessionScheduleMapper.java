package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.SessionScheduleDto;
import com.globomantics.conference.data.entities.SessionSchedule;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(uses = TimeSlotMapper.class)
public interface SessionScheduleMapper {

    @Mapping(source = "session.id", target = "sessionId")
    @Mapping(source = "session.name", target = "sessionName")
    SessionScheduleDto toDto(SessionSchedule entity);
}
