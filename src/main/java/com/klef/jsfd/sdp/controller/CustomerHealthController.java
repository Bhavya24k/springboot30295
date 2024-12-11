package com.klef.jsfd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.klef.jsfd.sdp.model.CustomerHealth;
import com.klef.jsfd.sdp.service.CustomerHealthService;

@RestController
@RequestMapping("/health")
public class CustomerHealthController {

    @Autowired
    private CustomerHealthService customerHealthService;

    @PostMapping("/health/addOrUpdate")
    public String addOrUpdateHealthInfo(@RequestParam Double height, 
                                        @RequestParam Double weight, 
                                        @RequestParam String goal, 
                                        @RequestParam Long customerId) {
        customerHealthService.saveHealthInfo(height, weight, goal, customerId);
        return "Health information saved successfully!";
    }


    @GetMapping("/{customerId}")
    public CustomerHealth getHealthData(@PathVariable int customerId) {
        return customerHealthService.findByCustomerId(customerId);
    }

    @GetMapping("/bmi/{customerId}")
    public double calculateBMI(@PathVariable int customerId) {
        return customerHealthService.calculateAndUpdateBMI(customerId);
    }
    
    @GetMapping("/health/bmi/{id}")
    public String calculateBMI(@PathVariable("id") int customerId, Model model) {
        CustomerHealth customerHealth = customerHealthService.getHealthByCustomerId(customerId);

        if (customerHealth != null) {
            double height = customerHealth.getHeight();  // Height in cm
            double weight = customerHealth.getWeight();  // Weight in kg

            // Check for valid height
            if (height > 0) {
                double bmi = weight / Math.pow(height / 100.0, 2); // Convert height to meters and calculate BMI
                model.addAttribute("bmi", String.format("%.2f", bmi)); // Format BMI to 2 decimal places
            } else {
                model.addAttribute("bmi", "Invalid height entered!");
            }

            model.addAttribute("customerHealth", customerHealth); // Add health data to model
        } else {
            model.addAttribute("bmi", "No health information available! Please update your details.");
        }

        return "customerhome"; 
    }
    
}
