package com.rms.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.rms.persistences.OfficialNews;

@Repository
public interface OfficialNewsRepository extends JpaRepository<OfficialNews, Long>{
	
	@Query("select news from OfficialNews as news where news.to_usertype = ?")
	public List<OfficialNews> getNewsByUserType(int usertype);
}
