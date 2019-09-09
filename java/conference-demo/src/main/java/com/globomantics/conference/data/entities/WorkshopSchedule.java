package com.globomantics.conference.data.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "workshop_schedule")
@SequenceGenerator(name = "workshop_schedule_gen", sequenceName = "workshop_schedule_seq")
public class WorkshopSchedule {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "workshop_schedule_gen")
    @Column(name = "schedule_id", unique = true, nullable = false)
    private Integer id;

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "workshop_id", unique = true, nullable = false)
    private Workshop workshop;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "time_slot_id", nullable = false)
    private TimeSlot timeSlot;

    @Column(name = "room", nullable = false, length = 30)
    private String room;

    public WorkshopSchedule() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Workshop getWorkshop() {
        return workshop;
    }

    public void setWorkshop(Workshop workshop) {
        this.workshop = workshop;
    }

    public TimeSlot getTimeSlot() {
        return timeSlot;
    }

    public void setTimeSlot(TimeSlot timeSlot) {
        this.timeSlot = timeSlot;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    @Override
    public String toString() {
        return String.valueOf(id);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WorkshopSchedule that = (WorkshopSchedule) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
