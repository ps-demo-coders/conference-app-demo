package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.Tag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TagRepository extends JpaRepository<Tag, Integer> {
}
