package com.rms.models;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Employees 
{
    private List<Employee> employees;
 
    public Employees(){
    	this.employees = new ArrayList<Employee>();
    }
	public List<Employee> getEmployees() {
        return employees;
    }
    @XmlElement
    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }
}
