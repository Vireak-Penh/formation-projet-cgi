package fr.formation.projetLesParisiens.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AdresseRepository;

@Controller
@RequestMapping("/choixLieuLivraison")
public class ChoixLieuxLivraisonController {

	private AdresseRepository repository;

	@RequestMapping("index")
	public ModelAndView index() {
		final ModelAndView mav = new ModelAndView("choixLieuLivraison");

		// mav.getModel().put("lieuLivraisonList",
		// this.repository.findByPostalcode(Integer postalcode));
		return mav;
	}

}
