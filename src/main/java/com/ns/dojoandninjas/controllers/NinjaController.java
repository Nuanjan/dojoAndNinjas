package com.ns.dojoandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ns.dojoandninjas.models.Dojo;
import com.ns.dojoandninjas.models.Ninja;
import com.ns.dojoandninjas.services.NinjaService;


@Controller
public class NinjaController {
	
	private final NinjaService ninjaService;
	public NinjaController(NinjaService ninjaService) {
		this.ninjaService = ninjaService;
	}
	
	// ====================== CREATE ROUTES ================================
	
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = ninjaService.allDojos();
		model.addAttribute("dojos",dojos);
		return "ninja.jsp";
	}
	
	@PostMapping(value="/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		List<Dojo> dojos = ninjaService.allDojos();
		model.addAttribute("dojos",dojos);
		if(result.hasErrors()) {
			return "ninja.jsp";
			
		} else {
			ninjaService.saveNinja(ninja);
			return "redirect:/";
		}
	}

}
