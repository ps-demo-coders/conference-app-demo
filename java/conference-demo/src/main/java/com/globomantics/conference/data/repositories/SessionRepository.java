package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.Session;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface SessionRepository extends JpaRepository<Session, Integer> {

    @Query("from Session s left join fetch s.tags left join fetch s.speakers")
    List<Session> findAll();

    @Query("from Session s left join fetch s.tags left join fetch s.speakers where s.id = :id")
    Optional<Session> findById(@Param("id") int id);
}
