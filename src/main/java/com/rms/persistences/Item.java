package com.rms.persistences;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import com.rms.persistences.QuantityType;

@Entity
@Table
public class Item implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private String name;
	@OneToOne(mappedBy = "item")
	private StockAndPrice stockAndPrice;
	@OneToOne
	private QuantityType quantityType;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public StockAndPrice getStockAndPrice() {
	    return stockAndPrice;
	}
	public void setStockAndPrice(StockAndPrice param) {
	    this.stockAndPrice = param;
	}
	public QuantityType getQuantityType() {
	    return quantityType;
	}
	public void setQuantityType(QuantityType param) {
	    this.quantityType = param;
	}
}