package com.globomantics.conference.data.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "speakers")
@SequenceGenerator(name = "speakers_gen", sequenceName = "speakers_seq")
public class Speaker {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "speakers_gen")
    @Column(name = "speaker_id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "first_name", nullable = false, length = 30)
    private String firstName;

    @Column(name = "last_name", nullable = false, length = 30)
    private String lastName;

    @Column(name = "title", nullable = false, length = 40)
    private String title;

    @Column(name = "company", nullable = false, length = 50)
    private String company;

    @Column(name = "speaker_bio", nullable = false)
    private String biography;

    @Column(name = "speaker_photo", nullable = true)
    private String photo;

    @ManyToMany(mappedBy = "speakers")
    private Set<Session> sessions = new HashSet<>();

    @ManyToMany(mappedBy = "speakers")
    private Set<Workshop> workshops = new HashSet<>();

    public Speaker() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Set<Session> getSessions() {
        return sessions;
    }

    public void setSessions(Set<Session> sessions) {
        this.sessions = sessions;
    }

    public Set<Workshop> getWorkshops() {
        return workshops;
    }

    public void setWorkshops(Set<Workshop> workshops) {
        this.workshops = workshops;
    }

    @Override
    public String toString() {
        return id + " " + firstName + " " + lastName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Speaker speaker = (Speaker) o;
        return Objects.equals(id, speaker.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
