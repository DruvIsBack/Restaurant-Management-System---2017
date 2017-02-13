package com.rms.controllers.iofunc;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.rms.persistences.User;
import com.rms.services.UserService;

@Component
public class Common{
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(Common.class);
	
	@Autowired
	UserService userService;
	
	public String codeGenerate(){
		SecureRandom random = new SecureRandom();
		return new BigInteger(130, random).toString(32);
	}
	
	public String genNewNameByDateTime(){
		return ((new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date()))).trim();	
	}
	
	public User getUser(HttpServletRequest request){
		User user = null;
		Cookie[] cookies = request.getCookies();
		HttpSession session = request.getSession();
		user = (User) session.getAttribute("userAuth");
		if(user != null){   //Have any valid user in session
			user = userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
			System.out.println("User data found in session...");
			return user;
		}else if(cookies != null){			//Have any valid user in cookies
				user = new User();
				for(Cookie cookie : cookies){
					if(cookie.getName().compareTo("uid") == 0){
						user.setUsername(cookie.getValue());
					}else if(cookie.getName().compareTo("pass") == 0){
						user.setPassword(cookie.getValue());
					}
				}
				user = userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
				if(user != null){
					System.out.println("User data found in cookies...");
					System.out.println("User data set to session...");
					session.setAttribute("userAuth", user);
					return user;
				}
		}
		return null;
	}
	
	public String getTimeCountFromToday(Date date) throws ParseException{
		//SimpleDateFormat sdf = new SimpleDateFormat("MMM d, yyyy h:mm:ss a", Locale.ENGLISH);
		Date currentDate = new Date();
		long sec = (long)(currentDate.getTime() - date.getTime())/1000;
		long min = (long)sec/60;
		sec = (long)sec % 60;
		long hour = (long)min/60;
		min = (long)min % 60;
		long day = (long)hour/24;
		hour = (long)hour%24;
		return "Day => "+day+", Hours => "+hour+", Minuites => "+min+", Seconds => "+sec;
	}
}
