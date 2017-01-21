package com.rms.persistences;

import java.io.Serializable;
import javax.persistence.*;


@Entity 
@Table
public class Organization implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private String name;
	private String estd;
	
	public void setOrganization(String resturantname, String estd) {
		this.estd = estd;
		this.name = resturantname;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEstd() {
		return estd;
	}
	public void setEstd(String estd) {
		this.estd = estd;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}