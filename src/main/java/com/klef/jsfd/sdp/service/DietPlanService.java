package com.klef.jsfd.sdp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jsfd.sdp.model.DietPlan;
@Service
public interface DietPlanService {

    // Save or update a diet plan
    void saveDietPlan(DietPlan dietPlan);

    // Get all diet plans for a specific customer
    List<DietPlan> getDietPlansByCustomerId(Long customerId);
}
