package com.rms.persistences;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import com.rms.persistences.Item;
import javax.persistence.OneToOne;


@Entity 
@Table
public class QuantityType implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private String name;
	@OneToOne(mappedBy = "quantityType")
	private Item item;
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
	public Item getItem() {
	    return item;
	}
	public void setItem(Item param) {
	    this.item = param;
	}
}