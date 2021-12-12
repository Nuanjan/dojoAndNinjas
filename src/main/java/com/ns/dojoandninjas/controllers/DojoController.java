package com.ns.dojoandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.ns.dojoandninjas.models.Dojo;
import com.ns.dojoandninjas.services.DojoService;

@Controller
public class DojoController {
	private final DojoService dojoService;
	public DojoController(DojoService dojoService) {
		this.dojoService = dojoService;
	}
	// ========================= GET ROUTES ==============================
//	@GetMapping("/")
//	public String index() {
//		return "redirect:/dojos";
//	}
	
	@GetMapping("/")
	public String dojos(@ModelAttribute("dojo") Dojo dojo, Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		return "index.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoWithNinjas(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute(dojo);
		return "dojoAndNinjas.jsp";
	}
	
	
	// ====================== CREATE ROUTES ================================
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "dojo.jsp";
	}
	
	@PostMapping(value="/dojos/create")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
	if(result.hasErrors()) {
		return "dojo.jsp";
				
	} else {
		dojoService.saveDojo(dojo);
		return "redirect:/";
	}
	}
	
	

}
