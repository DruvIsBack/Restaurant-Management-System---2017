package com.rms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.rms.persistences.Organization;

@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long>{
	
}
