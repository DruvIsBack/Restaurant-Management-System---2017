package com.rms.services;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.persistences.PersonalMessages;
import com.rms.persistences.User;
import com.rms.repositories.PersonalMessagesRepository;

@Transactional
@Service
public class PersonalMessagesService{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(PersonalMessagesService.class);
	
	@Autowired
	private PersonalMessagesRepository msgsRepo;
	
	public Boolean sendMessage(PersonalMessages msg){
		//Need some object validation here
		try{
			System.out.println("Trying to save message to database..............");
			msgsRepo.save(msg);
			System.out.println("Success..............");
			return true;
		}catch(Exception e){
			msg.toString();
			e.printStackTrace();
			return false;
		}
	}
	
	/*public PersonalMessages setSeen(PersonalMessages msg){
		msg.setSeen(true);
		try{
			msgsRepo.save(msg);
			return msg;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}*/
	
	public List<PersonalMessages> getMsgsByReceiver(User receiver){
		return msgsRepo.findByReceiver(receiver);
		/*List<PersonalMessages> seen_msgs = new ArrayList<PersonalMessages>();
		for(PersonalMessages msg: msgs){
			if(msg.getSeen()){
				seen_msgs.add(msg);
			}
		}
		Collections.sort(seen_msgs,new MessageTimeComparator());
		System.out.println("Personal already seen messages sorted....");
		if(seen_msgs.size() > 10){
			for(PersonalMessages msg: seen_msgs){
				System.out.println(msg.toString());
			}
		}
		return seen_msgs;*/
	}
}
