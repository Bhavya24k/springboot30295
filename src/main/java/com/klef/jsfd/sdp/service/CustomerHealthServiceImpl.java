package com.klef.jsfd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jsfd.sdp.model.CustomerHealth;
import com.klef.jsfd.sdp.repository.CustomerHealthRepository;

@Service
public class CustomerHealthServiceImpl implements CustomerHealthService {

    @Autowired
    private CustomerHealthRepository customerHealthRepository;

    @Override
    public CustomerHealth addOrUpdateHealthData(CustomerHealth healthData) {
        return customerHealthRepository.save(healthData);
    }

    @Override
    public CustomerHealth findByCustomerId(int customerId) {
        return customerHealthRepository.findByCustomerId(customerId);
    }

    @Override
    public double calculateAndUpdateBMI(int customerId) {
        CustomerHealth health = findByCustomerId(customerId);
        if (health != null) {
            double bmi = health.getWeight() / Math.pow(health.getHeight() / 100, 2);
            health.setBmi(bmi);
            customerHealthRepository.save(health);
            return bmi;
        }
        return 0.0;
    }
    @Override
    public CustomerHealth getHealthByCustomerId(int customerId) {
        return customerHealthRepository.findByCustomerId(customerId);
    }
    @Override
    public void saveHealthInfo(Double height, Double weight, String goal, Long customerId) {
        // Create a new CustomerHealth object or update an existing one
        CustomerHealth customerHealth = new CustomerHealth();
        customerHealth.setHeight(height);
        customerHealth.setWeight(weight);
        customerHealth.setGoal(goal);
        // Save the health information
        customerHealthRepository.save(customerHealth);
    }

}
