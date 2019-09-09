package com.globomantics.conference.data.mappers;

import com.globomantics.conference.data.dtos.SessionTagDto;
import com.globomantics.conference.data.entities.Tag;
import org.mapstruct.Mapper;

@Mapper
public interface SessionTagMapper {

    SessionTagDto toDto(Tag entity);
}
