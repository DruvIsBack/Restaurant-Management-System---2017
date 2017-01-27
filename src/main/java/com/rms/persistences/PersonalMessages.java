package com.rms.persistences;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import com.rms.persistences.User;
import javax.persistence.ManyToOne;

@Entity
@Table
public class PersonalMessages implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private String message;
	private Date time;
	private Boolean seen;
	@ManyToOne
	private User sender;
	@ManyToOne
	private User receiver;

	public void setDefault(User sender, User receiver){
		this.message = "";
		this.time = new Date();
		this.seen = false;
		this.sender = sender;
		this.receiver = receiver;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Boolean getSeen() {
		return seen;
	}

	public void setSeen(Boolean seen) {
		this.seen = seen;
	}

	public User getSender() {
		return sender;
	}

	public void setSender(User sender) {
		this.sender = sender;
	}

	public User getReceiver() {
		return receiver;
	}

	public void setReceiver(User receiver) {
		this.receiver = receiver;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PersonalMessages [id=" + id + ", message=" + message + ", time=" + time + ", seen=" + seen + ", sender="
				+ sender + ", receiver=" + receiver + "]";
	}
}