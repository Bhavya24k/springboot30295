package com.klef.jsfd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jsfd.sdp.model.CustomerHealth;

@Repository
public interface CustomerHealthRepository extends JpaRepository<CustomerHealth, Integer> {
    CustomerHealth findByCustomerId(int customerId); 
    // Query to get health data by customer ID
}
