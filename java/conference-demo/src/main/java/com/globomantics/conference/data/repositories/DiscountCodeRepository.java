package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.DiscountCode;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiscountCodeRepository extends JpaRepository<DiscountCode, Integer> {
}
