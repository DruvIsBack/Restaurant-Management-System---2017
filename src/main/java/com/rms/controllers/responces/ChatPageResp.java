package com.rms.controllers.responces;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value="/response/getChatPage")
public class ChatPageResp{
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView getChatPage(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("subpages/chat");
	}
}
