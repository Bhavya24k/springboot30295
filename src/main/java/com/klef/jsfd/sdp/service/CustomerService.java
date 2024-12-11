package com.klef.jsfd.sdp.service;

import com.klef.jsfd.sdp.model.Customer;

public interface CustomerService {

	public String customerRegistration(Customer customer);

	public Customer checkCustomerLogin(String cemail, String cpwd);

}
