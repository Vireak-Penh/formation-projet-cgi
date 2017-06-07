package fr.formation.projetLesParisiens.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AdresseRepository;
import fr.formation.projetLesParisiens.entity.Adresse;

@Controller
@RequestMapping("/choixLieuLivraison")
public class ChoixLieuxLivraisonController {

	private Adresse searchbyadress;
	private Adresse selectedadress;

	@Autowired
	private AdresseRepository adressRepository;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public String choixLieuLivraison(final Model model) {
		model.addAttribute("choixLieuLivraison", new Adresse());
		return "choixLieuLivraison";
	}

	@RequestMapping(path = "/listeLieux", method = RequestMethod.GET)
	public ModelAndView index() {
		final ModelAndView mav = new ModelAndView("listeLieux");
		mav.getModel().put("lieuLivraisonList", this.adressRepository.findByPostalcode(searchbyadress.getPostalcode()));
		return mav;
	}

	@RequestMapping(path = "/adressNotFound", method = RequestMethod.GET)
	public ModelAndView index2() {
		final ModelAndView mav = new ModelAndView("adressNotFound");
		return mav;
	}

	@RequestMapping(path = "/recapitulatifCommande", method = RequestMethod.GET)
	public String finalLieuLivraison(final Model model, @RequestParam("lieuLivraisonId") int id) {
		Adresse adr = this.adressRepository.findOne(id);
		model.addAttribute("recapitulatifAdresse", adr);
		return "recapitulatifCommande";
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
	public String searchAdress(@ModelAttribute("choixLieuLivraison") final Adresse adress) {
		if (this.adressRepository.findByPostalcode(adress.getPostalcode()).isEmpty()) {
			return "redirect:/choixLieuLivraison/adressNotFound.html";
		} else {
			this.searchbyadress = adress;
			return "redirect:/choixLieuLivraison/listeLieux.html";
		}
	}

}
