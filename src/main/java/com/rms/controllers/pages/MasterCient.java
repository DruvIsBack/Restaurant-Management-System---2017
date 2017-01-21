package com.rms.controllers.pages;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rms.controllers.iofunc.Common;
import com.rms.controllers.iofunc.FileIO;
import com.rms.persistences.User;
import com.rms.services.UserService;


@Controller
public class MasterCient{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(MasterCient.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	Common common;
	
	@Autowired
	FileIO fileIO;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	 public ModelAndView loginSignup(HttpServletRequest request, HttpServletResponse response) throws AddressException, MessagingException
	 {
		 ModelAndView model = new ModelAndView();
		 User user = common.getUser(request);
		 if(user == null){
			 if(userService.isEmptyAdmins()){
				 model = new ModelAndView("admin_registration","adminRegForm",new User());
			 }else{
				 model = new ModelAndView("login");
			 } 
		 }else{
			 model = new ModelAndView("master","user",user);
		 }
		 return model;
	 }
}
