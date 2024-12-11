package com.klef.jsfd.sdp.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jsfd.sdp.model.Customer;
import com.klef.jsfd.sdp.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {


	@Autowired
	 private CustomerRepository customerRepository;
	 
	 @Override
	public String customerRegistration(Customer customer) {
		customerRepository.save(customer);
		return "Customer Registered Successfully";
	}

	 @Override
	public Customer checkCustomerLogin(String cemail, String cpwd) {
		return customerRepository.checkCustomerLogin(cemail, cpwd);
	}

}
