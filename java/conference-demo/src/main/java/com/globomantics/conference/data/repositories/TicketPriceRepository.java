package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.TicketPrice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TicketPriceRepository extends JpaRepository<TicketPrice, Integer> {

    @Query("from TicketPrice tp left join fetch tp.ticketType left join fetch tp.pricingCategory")
    List<TicketPrice> findAll();
}
