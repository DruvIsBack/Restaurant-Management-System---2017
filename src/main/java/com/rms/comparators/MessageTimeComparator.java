package com.rms.comparators;

import java.util.Comparator;

import com.rms.persistences.PersonalMessages;

public class MessageTimeComparator implements Comparator<PersonalMessages>{
	public int compare(PersonalMessages msg1,PersonalMessages msg2){
		return msg1.getTime().compareTo(msg2.getTime());
	}
}
