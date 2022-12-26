package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	// need controller method to show the initial html form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	// need controller method to process html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	// new controller method to read form data and add data to model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		// read request parameter from html form
		String theName = request.getParameter("studentName");
		// convert data too all caps
		theName = theName.toUpperCase();
		// create message
		String result = "Yo!" + theName;
		// add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
		// read request parameter from html form
//		String theName = request.getParameter("studentName");
		// convert data too all caps
		theName = theName.toUpperCase();
		// create message
		String result = "Hey!" + theName;
		// add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
}
