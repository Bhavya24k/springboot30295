package com.klef.jsfd.sdp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jsfd.sdp.model.Customer;
import com.klef.jsfd.sdp.model.DietPlan;
import com.klef.jsfd.sdp.repository.PaymentService;
import com.klef.jsfd.sdp.service.CustomerService;
import com.klef.jsfd.sdp.service.DietPlanService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController
{
	@Autowired
	private CustomerService customerService;
	@Autowired
	private DietPlanService dietPlanService;
	@Autowired
	private PaymentService paymentService;
	

@GetMapping("/")
public ModelAndView home()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("home");
    return mv;
}

@GetMapping("signup")
public ModelAndView customerreg()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("signup");
    return mv;
}

@GetMapping("customerhome")
public ModelAndView customerhome()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("customerhome");
    return mv;
}

@GetMapping("customerprofile")
public ModelAndView customerprofile()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("customerprofile");
    return mv;
}


@PostMapping("insertcustomer")

public ModelAndView insertcustomer (HttpServletRequest request)
{
String name = request.getParameter("cname");
String gender = request.getParameter("cgender");
String dob = request.getParameter("cdob"); 
String email = request.getParameter("cemail");
String location = request.getParameter("clocation");
String contact = request.getParameter("ccontact");
String password = request.getParameter("cpwd");


Customer customer = new Customer();
customer.setName(name);
customer.setGender (gender); 
customer.setDateOfBirth (dob);
customer.setEmail(email);
customer.setLocation(location);
customer.setContact(contact); 
customer.setPassword (password);

String message = customerService.customerRegistration(customer);
ModelAndView mv = new ModelAndView(); 
mv.setViewName("regsuccess");
mv.addObject("message",message);
return mv;

}

@GetMapping("/customerlogin")
public ModelAndView showCustomerLogin() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("customerlogin");
    return mv;
}

@PostMapping("/checkcustomerlogin")
public String checkCustomerLogin(@RequestParam("email") String email, 
                                 @RequestParam("password") String password, 
                                 HttpServletRequest request) {
    Customer customer = customerService.checkCustomerLogin(email, password);

    if (customer != null) {
        HttpSession session = request.getSession();
        session.setAttribute("customer", customer);
        return "redirect:/customerhome";  // Redirect to Customer Home
    } else {
        return "redirect:/customerlogin?error=true";  // Redirect back with an error
    }
}

@GetMapping("customerlogout")
public ModelAndView customerlogout()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("customerlogin");
    return mv;
}

@GetMapping("/viewdietplan")
public String getDietPlan(Model model, @RequestParam Long customerId) {
    List<DietPlan> dietPlans = dietPlanService.getDietPlansByCustomerId(customerId);
    model.addAttribute("dietPlans", dietPlans);
    return "customerDietPlan";  // JSP page to display diet plans
}

@PostMapping("/processPayment")
public String processPayment(
        @RequestParam String cardNumber,
        @RequestParam String expiryDate,
        @RequestParam("cvv") String cvv,
        @RequestParam("amount") String amount,
        Model model) {

    try {
        // Call the payment service with the details provided by the user
        boolean isPaymentSuccessful = paymentService.processPayment(cardNumber, expiryDate, cvv, amount);

        if (isPaymentSuccessful) {
            model.addAttribute("message", "Payment Successful!");
            return "paymentSuccess";  // Success page
        } else {
            model.addAttribute("message", "Payment Failed! Please try again.");
            return "paymentFailure";  // Failure page
        }
    } catch (Exception e) {
        model.addAttribute("message", "An error occurred while processing the payment.");
        return "paymentError";  // Error page in case of exceptions
    }
}
}