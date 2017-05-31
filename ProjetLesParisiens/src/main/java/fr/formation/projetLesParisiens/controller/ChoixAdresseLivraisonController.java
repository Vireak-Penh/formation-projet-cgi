package fr.formation.projetLesParisiens.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AdresseRepository;

@Controller
@RequestMapping("/choixAdresseLivraison")
public class ChoixAdresseLivraisonController {

	@RequestMapping("/index")
	public ModelAndView index() {
		final ModelAndView mav = new ModelAndView("choixAdresseLivraison");

		mav.getModel().put("adresseLivraisonList", AdresseRepository.findAll());
		return mav;
	}

}
