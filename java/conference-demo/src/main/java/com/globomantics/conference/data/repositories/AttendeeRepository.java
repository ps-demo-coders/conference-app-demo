package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.Attendee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttendeeRepository extends JpaRepository<Attendee, Integer> {
}
