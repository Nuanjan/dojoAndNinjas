package com.ns.dojoandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ns.dojoandninjas.models.Dojo;
import com.ns.dojoandninjas.models.Ninja;
import com.ns.dojoandninjas.repositories.DojoRepository;
import com.ns.dojoandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	private final DojoRepository dojoRepository;
	public NinjaService(NinjaRepository ninjaRepository, DojoRepository dojoRepository) {
		this.ninjaRepository = ninjaRepository;
		this.dojoRepository = dojoRepository;
	}
	
	public List<Ninja> allNinjas(){
		return ninjaRepository.findAll();
	}
	
	public List<Dojo> allDojos(){
		return dojoRepository.findAll();
	}
	
	public Ninja findDojo(Long id) {
		Optional<Ninja> optionalDojo = ninjaRepository.findById(id);
		
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
	public void deleteDojo(Long id) {
		ninjaRepository.deleteById(id);
	}
}
