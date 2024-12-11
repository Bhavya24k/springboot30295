package com.klef.jsfd.sdp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jsfd.sdp.controller.*;
import com.klef.jsfd.sdp.model.*;
import com.klef.jsfd.sdp.service.AdminService;
import com.klef.jsfd.sdp.service.DietPlanService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController
{
	@Autowired
	private AdminService adminService;
	@Autowired
	 private DietPlanService dietPlanService;
	 private static final Logger logger = LoggerFactory.getLogger(AdminController.class);


	@GetMapping("/adminlogin")
    public ModelAndView showAdminLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }
@GetMapping("adminhome")
public ModelAndView adminhome()

{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("adminhome");

long count = adminService.customercount();
mv.addObject("count",count);
    return mv;
}


@PostMapping("/checkadminlogin")
public String checkAdminLogin(@RequestParam("username") String username, 
                              @RequestParam("password") String password, 
                              HttpServletRequest request) {
    Admin admin = adminService.checkAdminLogin(username, password);

    if (admin != null) {
        HttpSession session = request.getSession();
        session.setAttribute("admin", admin);
        return "redirect:/adminhome";  // Redirect to Admin Home
    } else {
        return "redirect:/adminlogin?error=true";  // Redirect back with an error
    }
}

@GetMapping("/viewAllCustomers")
public String viewAllCustomers(Model model) {
    try {
        List<Customer> customerList = adminService.viewAllCustomers();
        logger.info("Customer list retrieved in controller: " + customerList);
        
        long count = adminService.customercount();
        logger.info("Total customer count retrieved: " + count);

        model.addAttribute("customerlist", customerList);
        model.addAttribute("count", count);
        return "viewAllCustomers";
    } catch (Exception e) {
        logger.error("Error in viewAllCustomers controller method: ", e);
        model.addAttribute("error", "Unable to fetch customer data. Please try again later.");
        return "errorPage"; // Create a generic error page for fallback
    }
}


@PostMapping("/addDietPlan")
public String addDietPlan(@RequestParam Long customerId, @RequestParam String mealPlan, @RequestParam int calories) {
    DietPlan dietPlan = new DietPlan();
    dietPlan.setCustomerId(customerId);
    dietPlan.setMealPlan(mealPlan);
    dietPlan.setCalories(calories);

    dietPlanService.saveDietPlan(dietPlan);
    return "redirect:/adminhome";  // Redirect to the list of diet plans or confirmation page
}




}