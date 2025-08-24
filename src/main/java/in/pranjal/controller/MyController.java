package in.pranjal.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.pranjal.beans.Student;
import in.pranjal.services.LoginServices;
import in.pranjal.services.RegisterServices;
import jakarta.servlet.http.HttpSession;


@Controller
public class MyController {

	 // Root URL → show homepage.jsp
    @GetMapping("/")
    public String openHomePage(Model model) {
        System.out.println("✅ Index page accessed");
        model.addAttribute("pageTitle", "Welcome to Our Website");
        return "homepage"; // maps to homepage.jsp
    }

    // /home → show home.jsp
    @GetMapping("/homepage")
    public String openHome(Model model) {
        model.addAttribute("pageTitle", "Home");
        return "homepage";
    }

    // /aboutus → show aboutus.jsp
    @GetMapping("/aboutus")
    public String openAboutUsPage() {
        
        return "aboutus"; // maps to aboutus.jsp
    }

    // /contact → show contact.jsp
    @GetMapping("/contactus")
    public String openContactPage(Model model) {
        model.addAttribute("pageTitle", "Contact Us");
        return "contactus";
    }
    
 // /contact → show contact.jsp
    @GetMapping("/reglogin")
    public String openRegLoginPage(Model model) {
        model.addAttribute("pageTitle", "Contact Us");
        return "reglogin";
    }

    
    
    @Autowired
    LoginServices loginServics;
    
    // Added POST mapping to handle form submission
   @PostMapping("/login")
   public String processLogin(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session, Model model) {
       
	   String page ="error";
	   List<Student> student_list = loginServics.loginServices(email, password);
	   
       if(student_list.size() != 0) {
    	   
    	   session.setAttribute("session_name", student_list.get(0).getName());
    	   session.setAttribute("session_email", student_list.get(0).getEmail());
    	   session.setAttribute("session_gender", student_list.get(0).getGender());
    	   session.setAttribute("session_city", student_list.get(0).getCity());
    	  
    	   page="profile";
       }
       else {
    		model.addAttribute("model_message", "Email id and Password does not match");
    		model.addAttribute("model_pagename", "reglogins");
    		
    		page =" error";
       }
    	   
       return page;
    }
   
    @GetMapping("/profile")
    public String openProfilePage() {
    	
    	return "profile";
    }
    
    @GetMapping("/logout")
    public String openLogOut(HttpSession session) {
    	
    	session.invalidate();    	
    	
    	return "reglogin";
    }
    
    @Autowired
    RegisterServices registerServics;
    
    @PostMapping("/register")
    public String processRegister( 
    		                       @RequestParam("name") String name,
    		                       @RequestParam("email") String email,
    		                       @RequestParam("password") String password,
    		                       @RequestParam("gender") String gender,
    		                       @RequestParam("city") String city,
                                   Model model )
    {
    	String page ="error";
    	Student std = new Student();
    	
    	std.setName(name);
    	std.setEmail(email);
    	std.setPassword(password);
    	std.setGender(gender);
    	std.setCity(city);
    	
    	boolean status =  registerServics.registerService(std);
    	
    	if(status) {
    		model.addAttribute("model_message", "Student register successfully");
    		model.addAttribute("model_pagename", "reglogins");
    		page = "success";
    	}
    	else {
    		
    		model.addAttribute("model_message", "Student not registered due to some error ");
    		model.addAttribute("model_pagename", "reglogins");
    		
    		page = "error";
    	}
    	
    	return page;
    }

   
}