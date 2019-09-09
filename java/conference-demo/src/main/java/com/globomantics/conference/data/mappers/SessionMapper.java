package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.SessionDto;
import com.globomantics.conference.data.entities.Session;
import com.globomantics.conference.data.entities.Tag;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.Set;

@Mapper(uses = SessionSpeakerMapper.class)
public interface SessionMapper {

    SessionDto toDto(Session entity);

    default String tagToDescription(Tag tag) {
        return tag.getDescription();
    }
}
