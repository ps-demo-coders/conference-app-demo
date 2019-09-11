package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.Speaker;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpeakerRepository extends JpaRepository<Speaker, Integer> {
}
