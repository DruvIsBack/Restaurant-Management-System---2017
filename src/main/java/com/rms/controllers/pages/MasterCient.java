package com.rms.controllers.pages;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.rms.controllers.iofunc.Common;
import com.rms.controllers.iofunc.FileIO;
import com.rms.persistences.PersonalMessages;
import com.rms.persistences.User;
import com.rms.services.PersonalMessagesService;
import com.rms.services.UserService;
import com.rms.services.UserTypeService;


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
	
	@Autowired
	UserTypeService utservice; 
	
	@Autowired
	PersonalMessagesService msgService;
	
	@RequestMapping(value="/test1",method=RequestMethod.GET)
	public void test1(){
		PersonalMessages msg = new PersonalMessages();
		User sender = userService.findById(1);
		User receiver = userService.findById(2);
		sender.toString();
		receiver.toString();
		msg.setDefault(sender, receiver);
		msg.setMessage("hello bubai");
		msgService.sendMessage(msg);
	}
	
	@RequestMapping(value="/test2",method=RequestMethod.GET)
	public void test2(){
		User receiver = userService.findById(2);
		msgService.getMsgsByReceiver(receiver);
	}
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	 public ModelAndView loginSignup(HttpServletRequest request, HttpServletResponse response) throws AddressException, MessagingException, JAXBException{
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
			 model.addObject("usertype",utservice.getNameById(user.getUsertype()));
		 }
		 return model;
	 }
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout(WebRequest request,HttpServletResponse response, SessionStatus status){
		status.setComplete();
	    request.removeAttribute("userAuth", WebRequest.SCOPE_SESSION);
	    
	    Cookie cookie = new Cookie("uid", null);
	    cookie.setHttpOnly(true);
	    cookie.setMaxAge(0);
	    response.addCookie(cookie);
	    
	    cookie = new Cookie("pass", null);
	    cookie.setHttpOnly(true);
	    cookie.setMaxAge(0);
	    response.addCookie(cookie);
	    
	    return new ModelAndView("redirect:/");
	}
}
