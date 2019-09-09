package com.globomantics.conference.data.repositories;

import com.globomantics.conference.data.entities.PricingCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PricingCategoryRepository extends JpaRepository<PricingCategory, String> {

    Optional<PricingCategory> findByCode(String code);
}
