package com.globomantics.conference.data.dtos;

import java.time.LocalDate;
import java.time.LocalTime;

public class TimeSlotDto {

    private Integer id;
    private LocalDate date;
    private LocalTime startTime;
    private LocalTime endTime;
    private boolean keynoteTimeSlot;

    public TimeSlotDto() {
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
}
