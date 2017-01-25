package com.rms.services;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.rms.models.UserType;
import com.rms.models.UserTypes;

@Service
public class UserTypeService {
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(UserTypeService.class);
	private UserTypes uts;
	private ClassLoader classLoader;
	private JAXBContext jaxbContext;
    private Unmarshaller jaxbUnmarshaller;
	
	UserTypeService() throws JAXBException{
		jaxbContext = JAXBContext.newInstance(UserTypes.class);
	    jaxbUnmarshaller = jaxbContext.createUnmarshaller();
	    classLoader = getClass().getClassLoader();
	    uts = (UserTypes) jaxbUnmarshaller.unmarshal(new File(classLoader.getResource("usertype.xml").getFile()));
	}
	
	public String getNameById(int id) throws JAXBException{
	    for(UserType ut : uts.getUsertypes()){
	    	if(ut.getId()==id){
	    		return(ut.getName());
	    	}
	    }
	    return null;
	}
}
