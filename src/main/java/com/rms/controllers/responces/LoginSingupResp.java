package com.rms.controllers.responces;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.rms.services.UserService;


@RestController
public class LoginSingupResp{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(LoginSingupResp.class);
	
	@Autowired
	private UserService userservice;
	
	//1 - Default credential matched...
	 @RequestMapping(value="/doLogin",method=RequestMethod.POST)
	 public String doLogin(@RequestParam String username,@RequestParam String password,HttpServletRequest request, HttpServletResponse response) throws AddressException, MessagingException
	 {
		 if(userservice.isEmptyAdmins()){
			 if(username == password && username == "123456"){
				//Then admin default credential is "123456" username & in password also
				 return "1";
			 }else{
				 return "For first time admin default username & password is '123456'";
			 }
		 }else{
			 return "invalid or not found !";
		 }
		 
	 }
}
