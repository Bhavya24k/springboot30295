package com.klef.jsfd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jsfd.sdp.model.DietPlan;

import java.util.List;

@Repository
public interface DietPlanRepository extends JpaRepository<DietPlan, Long> {
    // Find diet plans by Customer ID
    List<DietPlan> findByCustomerId(Long customerId);
}