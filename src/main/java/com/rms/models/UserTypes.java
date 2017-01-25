package com.rms.models;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserTypes 
{
    private List<UserType> usertypes;

    public UserTypes(){
    	this.usertypes = new ArrayList<UserType>();
    }
    
	public List<UserType> getUsertypes() {
		return usertypes;
	}
	@XmlElement
	public void setUsertypes(List<UserType> usertypes) {
		this.usertypes = usertypes;
	}
}
