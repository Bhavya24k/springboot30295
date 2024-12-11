package com.klef.jsfd.sdp.service;

import java.util.List; 
import com.klef.jsfd.sdp.model.*;

public interface AdminService
{

public List<Customer> viewAllCustomers();
public Admin checkAdminLogin(String uname, String pwd);
public long customercount();
void saveHealthMetric(CustomerHealth customerHealth);

}
