package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.SessionSpeakerDto;
import com.globomantics.conference.data.entities.Speaker;
import org.mapstruct.Mapper;

@Mapper
public interface SessionSpeakerMapper {

    SessionSpeakerDto toDto(Speaker entity);
}
