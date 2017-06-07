package fr.formation.projetLesParisiens.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Commande")
public class OrderController {

	@RequestMapping(path = "/validationCommande", method = RequestMethod.GET)
	public ModelAndView validationCommande() {
		ModelAndView mav = new ModelAndView("validationCommande");
		return mav;
	}

}
