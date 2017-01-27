package com.rms.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.rms.persistences.PersonalMessages;
import com.rms.persistences.User;

@Repository
public interface PersonalMessagesRepository extends JpaRepository<PersonalMessages, Long>{
	
	public List<PersonalMessages> findByReceiver(User receiver);
}
