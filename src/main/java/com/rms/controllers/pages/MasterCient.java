package com.rms.controllers.pages;

import java.io.File;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rms.controllers.iofunc.Common;
import com.rms.controllers.iofunc.FileIO;
import com.rms.models.Employee;
import com.rms.models.Employees;
import com.rms.persistences.User;
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
	
	
	@RequestMapping(value="/test2",method=RequestMethod.GET)
	public void test2(HttpServletRequest request, HttpServletResponse response) throws JAXBException{
		JAXBContext jaxbContext = JAXBContext.newInstance(Employees.class);
	    Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
	     
	    //We had written this file in marshalling example
	    Employees emps = (Employees) jaxbUnmarshaller.unmarshal( new File("c:/hello.txt") );
	     
	    for(Employee emp : emps.getEmployees())
	    {
	        System.out.println(emp.getId());
	        System.out.println(emp.getFirstName());
	    }
	}
	
	@RequestMapping(value="/test1",method=RequestMethod.GET)
	 public void test1(HttpServletRequest request, HttpServletResponse response) throws JAXBException{
		Employees employees = new Employees();
		
	    Employee emp1 = new Employee();
	    emp1.setId(1);
	    emp1.setFirstName("Lokesh");
	    emp1.setLastName("Gupta");
	    emp1.setIncome(100.0);
	     
	    Employee emp2 = new Employee();
	    emp2.setId(2);
	    emp2.setFirstName("John");
	    emp2.setLastName("Mclane");
	    emp2.setIncome(200.0);
	     
	    //Add the employees in list
	    employees.getEmployees().add(emp1);
	    employees.getEmployees().add(emp2);
	    
		
		JAXBContext jaxbContext = JAXBContext.newInstance(Employees.class);
		Marshaller jaxbMarshaller = jaxbContext.createMarshaller();

		jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		
		//Marshal the employees list in console
		jaxbMarshaller.marshal(employees, System.out);
		
		//Marshal the employees list in file
	    jaxbMarshaller.marshal(employees, new File("c:/hello.txt"));
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
		 }
		 return model;
	 }
}
