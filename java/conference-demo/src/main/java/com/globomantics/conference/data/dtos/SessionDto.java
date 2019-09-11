package com.globomantics.conference.data.dtos;

import java.util.Set;

public class SessionDto {

    private Integer id;
    private String name;
    private String description;
    private int length;
    private Set<String> tags;
    private Set<SessionSpeakerDto> speakers;

    public SessionDto() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public Set<String> getTags() {
        return tags;
    }

    public void setTags(Set<String> tags) {
        this.tags = tags;
    }

    public Set<SessionSpeakerDto> getSpeakers() {
        return speakers;
    }

    public void setSpeakers(Set<SessionSpeakerDto> speakers) {
        this.speakers = speakers;
    }
}
