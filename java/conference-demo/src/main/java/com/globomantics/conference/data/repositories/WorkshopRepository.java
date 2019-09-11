package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.Workshop;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WorkshopRepository extends JpaRepository<Workshop, Integer> {
}
