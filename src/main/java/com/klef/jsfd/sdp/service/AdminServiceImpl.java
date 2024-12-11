package com.klef.jsfd.sdp.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jsfd.sdp.model.Admin;
import com.klef.jsfd.sdp.model.Customer;
import com.klef.jsfd.sdp.model.CustomerHealth;
import com.klef.jsfd.sdp.repository.AdminRepository;
import com.klef.jsfd.sdp.repository.CustomerRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class AdminServiceImpl implements AdminService {

    private static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private AdminRepository adminRepository;

    @Override
    public List<Customer> viewAllCustomers() {
        try {
            List<Customer> customers = customerRepository.findAll();
            logger.info("Number of customers retrieved: " + customers.size());
            return customers;
        } catch (Exception e) {
            logger.error("Error retrieving customers: ", e);
            throw e; // Rethrow the exception to bubble it up for further debugging.
        }
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        try {
            Admin admin = adminRepository.checkAdminLogin(uname, pwd);
            if (admin == null) {
                logger.warn("No admin found with username: " + uname);
            }
            return admin;
        } catch (Exception e) {
            logger.error("Error during admin login check: ", e);
            throw e;
        }
    }

    @Override
    public long customercount() {
        try {
            long count = customerRepository.count();
            logger.info("Total number of customers: " + count);
            return count;
        } catch (Exception e) {
            logger.error("Error counting customers: ", e);
            throw e;
        }
    }

	@Override
	public void saveHealthMetric(CustomerHealth customerHealth) {
		// TODO Auto-generated method stub
		
	}
    
   
}
