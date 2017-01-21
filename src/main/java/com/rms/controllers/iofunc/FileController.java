package com.rms.controllers.iofunc;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rms.persistences.User;
import com.rms.services.UserService;

@RestController
@RequestMapping("/filemanager")
public class FileController{
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(FileController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	Common common;
	
	@Autowired
	FileIO fileIO;
	
	@RequestMapping(value = "/getfile/{type}/{name}",method=RequestMethod.GET)
	public byte[] getFile(HttpServletRequest request, HttpServletResponse response,@PathVariable String name,@PathVariable String type) throws IOException{
		byte[] filedata = null;
		System.out.println("File name: "+name);
		filedata = fileIO.getFile(request, type, name);
		return filedata;
	}
}
