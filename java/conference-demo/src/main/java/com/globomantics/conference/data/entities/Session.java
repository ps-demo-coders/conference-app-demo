package com.globomantics.conference.data.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "sessions")
@SequenceGenerator(name = "sessions_gen", sequenceName = "sessions_seq")
public class Session {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sessions_gen")
    @Column(name = "session_id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "session_name", nullable = false)
    private String name;

    @Column(name = "session_description", nullable = false)
    private String description;

    @Column(name = "session_length", nullable = false)
    private int length;

    @ManyToMany
    @JoinTable(name = "session_tags", joinColumns = @JoinColumn(name = "session_id"), inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private Set<Tag> tags = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "session_speakers", joinColumns = @JoinColumn(name = "session_id"), inverseJoinColumns = @JoinColumn(name = "speaker_id"))
    private Set<Speaker> speakers = new HashSet<>();

    public Session() {
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

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }

    public void addTag(Tag tag) {
        tags.add(tag);
        tag.getSessions().add(this);
    }

    public void removeTag(Tag tag) {
        tags.remove(tag);
        tag.getSessions().remove(this);
    }

    public Set<Speaker> getSpeakers() {
        return speakers;
    }

    public void setSpeakers(Set<Speaker> speakers) {
        this.speakers = speakers;
    }

    public void addSpeaker(Speaker speaker) {
        speakers.add(speaker);
        speaker.getSessions().add(this);
    }

    public void removeSpeaker(Speaker speaker) {
        speakers.remove(speaker);
        speaker.getSessions().remove(this);
    }

    @Override
    public String toString() {
        return id + " " + name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Session session = (Session) o;
        return Objects.equals(id, session.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
