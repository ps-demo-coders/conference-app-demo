package com.globomantics.conference.data.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "workshops")
@SequenceGenerator(name = "workshops_gen", sequenceName = "workshops_seq")
public class Workshop {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "workshops_gen")
    @Column(name = "workshop_id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "workshop_name", nullable = false, length = 60)
    private String name;

    @Column(name = "description", nullable = false, length = 1024)
    private String description;

    @Column(name = "requirements", nullable = false, length = 1024)
    private String requirements;

    @Column(name = "room", nullable = false, length = 50)
    private String room;

    @Column(name = "capacity", nullable = false)
    private int capacity;

    @ManyToMany
    @JoinTable(name = "workshop_speakers", joinColumns = @JoinColumn(name = "workshop_id"), inverseJoinColumns = @JoinColumn(name = "speaker_id"))
    private Set<Speaker> speakers = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "workshop_registrations", joinColumns = @JoinColumn(name = "workshop_id"), inverseJoinColumns = @JoinColumn(name = "attendee_ticket_id"))
    private Set<AttendeeTicket> registrations = new HashSet<>();

    public Workshop() {
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

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Set<Speaker> getSpeakers() {
        return speakers;
    }

    public void setSpeakers(Set<Speaker> speakers) {
        this.speakers = speakers;
    }

    public void addSpeaker(Speaker speaker) {
        speakers.add(speaker);
        speaker.getWorkshops().add(this);
    }

    public void removeSpeaker(Speaker speaker) {
        speakers.remove(speaker);
        speaker.getWorkshops().remove(this);
    }

    public Set<AttendeeTicket> getRegistrations() {
        return registrations;
    }

    public void setRegistrations(Set<AttendeeTicket> registrations) {
        this.registrations = registrations;
    }

    public void addRegistration(AttendeeTicket attendeeTicket) {
        registrations.add(attendeeTicket);
        attendeeTicket.getWorkshops().add(this);
    }

    public void removeRegistration(AttendeeTicket attendeeTicket) {
        registrations.remove(attendeeTicket);
        attendeeTicket.getWorkshops().remove(this);
    }

    @Override
    public String toString() {
        return id + " " + name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Workshop workshop = (Workshop) o;
        return Objects.equals(id, workshop.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
