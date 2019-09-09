package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.AttendeeTicket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttendeeTicketRepository extends JpaRepository<AttendeeTicket, Integer> {
}
