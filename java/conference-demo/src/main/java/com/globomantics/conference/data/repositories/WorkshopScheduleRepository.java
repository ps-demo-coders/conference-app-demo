package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.WorkshopSchedule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WorkshopScheduleRepository extends JpaRepository<WorkshopSchedule, Integer> {
}
