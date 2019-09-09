package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.TimeSlot;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TimeSlotRepository extends JpaRepository<TimeSlot, Integer> {
}
