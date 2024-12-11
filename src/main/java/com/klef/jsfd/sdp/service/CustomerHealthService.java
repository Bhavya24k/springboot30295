package com.klef.jsfd.sdp.service;

import com.klef.jsfd.sdp.model.CustomerHealth;

public interface CustomerHealthService {
    CustomerHealth addOrUpdateHealthData(CustomerHealth healthData); // Add/Update health data
    CustomerHealth findByCustomerId(int customerId);                 // Retrieve health data by customer ID
    double calculateAndUpdateBMI(int customerId); 
    CustomerHealth getHealthByCustomerId(int customerId);
    void saveHealthInfo(Double height, Double weight, String goal, Long customerId);
}
