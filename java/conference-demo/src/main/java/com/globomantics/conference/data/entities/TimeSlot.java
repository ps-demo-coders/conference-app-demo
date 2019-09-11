package com.globomantics.conference.data.entities;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Objects;

@Entity
@Table(name = "time_slots")
@SequenceGenerator(name = "time_slots_gen", sequenceName = "time_slots_seq")
public class TimeSlot {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "time_slots_gen")
    @Column(name = "time_slot_id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "time_slot_date", nullable = false)
    private LocalDate date;

    @Column(name = "start_time", nullable = false)
    private LocalTime startTime;

    @Column(name = "end_time", nullable = false)
    private LocalTime endTime;

    @Column(name = "is_keynote_time_slot", nullable = false)
    private boolean keynoteTimeSlot;

    public TimeSlot() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalTime startTime) {
        this.startTime = startTime;
    }

    public LocalTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalTime endTime) {
        this.endTime = endTime;
    }

    public boolean isKeynoteTimeSlot() {
        return keynoteTimeSlot;
    }

    public void setKeynoteTimeSlot(boolean keynoteTimeSlot) {
        this.keynoteTimeSlot = keynoteTimeSlot;
    }

    @Override
    public String toString() {
        return String.valueOf(id);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TimeSlot timeSlot = (TimeSlot) o;
        return Objects.equals(id, timeSlot.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
