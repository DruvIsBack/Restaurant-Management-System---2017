package com.rms.services;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.persistences.User;
import com.rms.repositories.UserRepository;

@Transactional
@Service
public class UserService{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(UserService.class);
	
	@Autowired
	private UserRepository userRepository;
	
	public Boolean isEmptyAdmins(){
		long totaladmin = userRepository.getAllAdminCount();
		if(totaladmin > 0){
			return false;
		}else{
			return true;
		}
	}

	public User findByUsernameAndPassword(String username, String password){
		return userRepository.findByUsernameAndPassword(username, password);
	}
	public void saveUser(User user) {
		userRepository.save(user);
	}
}
