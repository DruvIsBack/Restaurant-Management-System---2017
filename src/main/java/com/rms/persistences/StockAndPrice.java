package com.rms.persistences;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import com.rms.persistences.Branch;

@Entity
public class StockAndPrice implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private long quantity;
	private String price;
	private String discount_price;
	@OneToOne
	private Item item;
	@OneToOne
	private Branch branch;
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long amount) {
		this.quantity = amount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String param) {
		this.price = param;
	}

	public String getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(String param) {
		this.discount_price = param;
	}

	public Item getItem() {
	    return item;
	}

	public void setItem(Item param) {
	    this.item = param;
	}

	public Branch getBranch() {
	    return branch;
	}

	public void setBranch(Branch param) {
	    this.branch = param;
	}
}