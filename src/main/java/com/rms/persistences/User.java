package com.rms.persistences;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.rms.persistences.PersonalMessages;
import java.util.List;
import javax.persistence.OneToMany;

@Entity
@Table
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private int usertype;
	private String firstname;
	private String middlename;
	private String lastname;
	private String username;
	private String password;
	private String address;
	private String email;
	private String phone;
	private String photo;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private Boolean isBlock;		//For login allow/block
	@ManyToOne
	private Branch branch;
	@OneToMany(mappedBy = "sender")
	private List<PersonalMessages> personalMessages;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Boolean getIsBlock() {
		return isBlock;
	}
	public void setIsBlock(Boolean isBlock) {
		this.isBlock = isBlock;
	}
	public int getUsertype() {
		return usertype;
	}
	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}
	public Branch getBranch() {
	    return branch;
	}
	public void setBranch(Branch param) {
	    this.branch = param;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public List<PersonalMessages> getMessages() {
	    return personalMessages;
	}
	public void setMessages(List<PersonalMessages> param) {
	    this.personalMessages = param;
	}
}
