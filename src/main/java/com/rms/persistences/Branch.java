package com.rms.persistences;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.rms.persistences.StockAndPrice;
import javax.persistence.OneToOne;

@Entity
@Table
public class Branch implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private String address;
	@OneToMany(mappedBy = "branch")
	private List<User> user;
	@OneToOne(mappedBy = "branch")
	private StockAndPrice stockAndPrice;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String param) {
		this.address = param;
	}
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> param) {
		this.user = param;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public StockAndPrice getStockAndPrice() {
	    return stockAndPrice;
	}
	public void setStockAndPrice(StockAndPrice param) {
	    this.stockAndPrice = param;
	}
}