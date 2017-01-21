package com.rms.controllers.pages;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.rms.controllers.iofunc.Common;
import com.rms.controllers.iofunc.FileIO;
import com.rms.persistences.Organization;
import com.rms.persistences.User;
import com.rms.services.OrgService;
import com.rms.services.UserService;


@Controller
public class LoginSingupClient{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(LoginSingupClient.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	OrgService orgService;
	
	@Autowired
	Common common;
	
	@Autowired
	FileIO fileIO;
	
	 @RequestMapping(value="/adminRegisterFormSubmit",method=RequestMethod.POST)
	 public ModelAndView adminRegisterFormSubmit(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("adminRegForm") User userAdmin,@RequestParam("photo_data") MultipartFile photodata,@RequestParam String resturantname,@RequestParam String estd) throws AddressException, MessagingException
	 {
		 if(userService.isEmptyAdmins()){
			 System.out.println("Resturant Name :- "+resturantname);
			 System.out.println("Resturant ESTD :- "+estd);
			 Organization org = new Organization();
			 org.setOrganization(resturantname, estd);
			 String photoNameByDateTime = common.genNewNameByDateTime();
			 fileIO.saveFile(request, "userphoto", photodata,photoNameByDateTime);
			 userAdmin.setPhoto(photoNameByDateTime);
			 userAdmin.setUsertype(1);
			 userAdmin.setIsBlock(false);
			 userService.saveUser(userAdmin);
			 orgService.saveOrg(org);
		 }
		 return new ModelAndView("redirect:" + "/");
	 }
	 
	 @RequestMapping(value="/formLoginSubmit",method=RequestMethod.POST)
	 public ModelAndView formLoginSubmit(HttpServletRequest request, HttpServletResponse response,@RequestParam String username,@RequestParam String password) throws AddressException, MessagingException
	 {
		 ModelAndView model = new ModelAndView();
		 User userObj = userService.findByUsernameAndPassword(username, password);
		 if(userObj != null){
			 if(request.getParameter("rememberme") != null){
				 int expday = (60*60*60*24*30);
				 Cookie uid = new Cookie("uid", username);
				 uid.setMaxAge(expday);
				 uid.setHttpOnly(true);
				 response.addCookie(uid);
				 
				 Cookie pass = new Cookie("pass", password);
				 pass.setHttpOnly(true);
				 pass.setMaxAge(expday);
				 response.addCookie(pass);
			 }
			 HttpSession session = request.getSession();
			 session.setAttribute("userAuth", userObj);
			 model.addObject("userObj",userObj);
			 return new ModelAndView("redirect:" + "/");
		 }else{
			 model= new ModelAndView("login");
			 model.addObject("blnAuthFailed", true);
		 }
		 return model;
	 }
}
