package com.rms.services;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.persistences.Organization;
import com.rms.repositories.OrganizationRepository;

@Transactional
@Service
public class OrgService{
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(OrgService.class);
	
	@Autowired
	private OrganizationRepository orgRepository;
	
	public void saveOrg(Organization org) {
		orgRepository.save(org);
	}
}
