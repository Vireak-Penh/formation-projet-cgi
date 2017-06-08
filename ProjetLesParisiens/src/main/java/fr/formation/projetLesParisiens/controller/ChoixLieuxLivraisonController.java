package fr.formation.projetLesParisiens.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AdresseRepository;
import fr.formation.projetLesParisiens.dao.HistoriqueRepository;
import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Adresse;
import fr.formation.projetLesParisiens.entity.Historique;

@Controller
@RequestMapping("/choixLieuLivraison")
public class ChoixLieuxLivraisonController {

	@Autowired
	private HistoriqueRepository historiqueRepository;

	@Autowired
	private AdresseRepository adressRepository;

	@Autowired
	private UtilisateurRepository userRepository;

	private Integer postalcode;

	private Integer userid;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView choixLieuLivraison() {
		ModelAndView mav = new ModelAndView("choixLieuLivraison");
		return mav;
	}

	@RequestMapping(path = "/listeLieux", method = RequestMethod.GET)
	public ModelAndView index() {
		final ModelAndView mav = new ModelAndView("listeLieux");
		List<Adresse> list1 = this.adressRepository.findByPostalcode(postalcode);
		List<Adresse> lieuLivraisonList = new ArrayList<>();
		for (Adresse ad : list1) {
			Integer uid = ad.getUserid();
			if (this.userRepository.findOne(uid).getPointofdelivery() == true) {
				lieuLivraisonList.add(ad);
			}
		}
		mav.getModel().put("lieuLivraisonList", lieuLivraisonList);
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

	@RequestMapping(path = "/validationCommande", method = RequestMethod.GET)
	public String newCommand(final Model model) {
		model.addAttribute("newCommand", new Historique());
		return "validationCommande";
	}

	@RequestMapping(path = "/recapitulatifCommande", method = RequestMethod.POST)
	public String createCmdHist(final Model model, @RequestParam("lieuLivraisonId") int id,
			@ModelAttribute("newCmdHist") final Historique cmdHist) {
		Adresse adr = this.adressRepository.findOne(id);
		model.addAttribute("recapitulatifAdresse", adr);
		cmdHist.setUserid(this.userid);
		this.historiqueRepository.save(cmdHist);
		return "validationCommande";
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
	public String searchAdress(final HttpServletRequest request) {
		final Integer postalcode = Integer.parseInt(request.getParameter("postalcode"));
		if (this.adressRepository.findByPostalcode(postalcode).isEmpty()) {
			return "redirect:/choixLieuLivraison/adressNotFound.html";
		} else {
			this.postalcode = postalcode;
			return "redirect:/choixLieuLivraison/listeLieux.html";
		}
	}

}
