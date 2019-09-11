package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.SessionSchedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SessionScheduleRepository extends JpaRepository<SessionSchedule, Integer> {

    @Query("from SessionSchedule ss left join fetch ss.session left join fetch ss.timeSlot order by ss.timeSlot.date asc, ss.timeSlot.startTime asc, ss.room asc")
    List<SessionSchedule> findAll();
}
