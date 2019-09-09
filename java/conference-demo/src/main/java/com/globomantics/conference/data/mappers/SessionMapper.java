package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.SessionDto;
import com.globomantics.conference.data.entities.Session;
import org.mapstruct.Mapper;

@Mapper(uses = {SessionTagMapper.class, SessionSpeakerMapper.class})
public interface SessionMapper {

    SessionDto toDto(Session entity);
}
