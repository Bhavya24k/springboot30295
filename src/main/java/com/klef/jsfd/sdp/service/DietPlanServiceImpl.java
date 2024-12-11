package com.klef.jsfd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jsfd.sdp.model.DietPlan;
import com.klef.jsfd.sdp.repository.DietPlanRepository;

import java.util.List;

@Service
public class DietPlanServiceImpl implements DietPlanService {

    @Autowired
    private DietPlanRepository dietPlanRepository;

    // Save or update a diet plan
    @Override
    public void saveDietPlan(DietPlan dietPlan) {
        dietPlanRepository.save(dietPlan);
    }

    // Get all diet plans for a specific customer
    @Override
    public List<DietPlan> getDietPlansByCustomerId(Long customerId) {
        return dietPlanRepository.findByCustomerId(customerId);
    }
}
