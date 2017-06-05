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
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AdresseRepository;
import fr.formation.projetLesParisiens.dao.HoraireRepository;
import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Adresse;
import fr.formation.projetLesParisiens.entity.Horaire;
import fr.formation.projetLesParisiens.entity.Utilisateur;

@Controller
@RequestMapping("/inscriptionPR")
public class InscriptionPRController {

	@Autowired
	private UtilisateurRepository userRepository;
	@Autowired
	private HoraireRepository scheduleRepository;
	@Autowired
	private AdresseRepository adressRepository;

	private Integer userid;

	private Utilisateur usermodif;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public String newUtilisateur(final Model model) {
		model.addAttribute("newUtilisateur", new Utilisateur());
		model.addAttribute("newAdresse", new Adresse());
		return "inscriptionPR";
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
	public String createUtilisateur(@ModelAttribute("newUtilisateur") final Utilisateur user) {
		if (this.userRepository.findByEmail(user.getEmail()).isEmpty()) {
			this.userRepository.save(user);
			this.userid = user.getUserid();
			return "redirect:/inscriptionPR/addAdresse.html";
		} else {
			return "redirect:/inscriptionPR/countExists.html";

		}

	}

	@RequestMapping(path = "/addAdresse", method = RequestMethod.GET)
	public String newAdresse(final Model model) {
		model.addAttribute("newAdresse", new Adresse());
		return "addAdress";
	}

	@RequestMapping(path = "/addAdresse", method = RequestMethod.POST)
	public String createAdresse(@ModelAttribute("newAdresse") final Adresse adress) {
		adress.setUserid(this.userid);
		this.adressRepository.save(adress);
		return "redirect:/inscriptionPR/addSchedule.html";
	}

	@ModelAttribute("dayList")
	public List<String> getdayList() {
		List<String> dayList = new ArrayList<String>();
		dayList.add("Lundi");
		dayList.add("Mardi");
		dayList.add("Mercredi");
		dayList.add("Jeudi");
		dayList.add("Vendredi");
		dayList.add("Samedi");
		return dayList;
	}

	@RequestMapping(path = "/addSchedule", method = RequestMethod.GET)
	public String newSchedule(final Model model) {
		model.addAttribute("newSchedule", new Horaire());
		return "firstSchedulePR";
	}

	@RequestMapping(path = "/addSchedule", method = RequestMethod.POST)
	public String createSchedule(@ModelAttribute("newSchedule") final Horaire schedule) {
		if (userid != null) {
			schedule.setUserid(userid);
		}
		this.scheduleRepository.save(schedule);
		return "redirect:/inscriptionPR/addDaySchedule.html";
	}

	@RequestMapping(path = "/addDaySchedule", method = RequestMethod.GET)
	public ModelAndView addDaySchedule() {
		ModelAndView mav = new ModelAndView("addDaySchedule");
		return mav;
	}

	@RequestMapping(path = "/countExists", method = RequestMethod.GET)
	public ModelAndView countExists() {
		ModelAndView mav = new ModelAndView("countExists");
		return mav;
	}

	@RequestMapping(path = "/modifyWhichAccount", method = RequestMethod.GET)
	public ModelAndView formulaireEmail() {
		ModelAndView mav = new ModelAndView("emailForModif");
		return mav;
	}

	@RequestMapping(path = "/modifyWhichAccount", method = RequestMethod.POST)
	public String sendEmail(final HttpServletRequest request) {
		if (this.userRepository.findByEmail(request.getParameter("userEmail")).size() > 0) {
			this.usermodif = this.userRepository.findByEmail(request.getParameter("userEmail")).get(0);
			return "redirect:/inscriptionPR/modifyAccount.html";
		} else {
			return "redirect:/inscriptionPR/modifyWhichAccount.html";
		}
	}

	@RequestMapping(path = "/modifyAccount", method = RequestMethod.GET)
	public ModelAndView afficheModifyAccount() {
		ModelAndView mav = new ModelAndView("modifiercompte");
		mav.getModel().put("UserModif", this.userRepository.findOne(usermodif.getUserid()));
		mav.getModel().put("AdressModif", this.adressRepository.findByUserid(usermodif.getUserid()).get(0));
		return mav;
	}

	@RequestMapping(path = "/modifyAccount", method = RequestMethod.POST)
	public String modifyAccount(final HttpServletRequest request) {
		final String lastname = request.getParameter("lastname");
		final String surname = request.getParameter("surname");
		final String email = request.getParameter("email");
		final Integer phone = Integer.parseInt(request.getParameter("phone"));
		final Boolean pointofdelivery = Boolean.parseBoolean(request.getParameter("pointofdelivery"));
		final Boolean deliveryuser = Boolean.parseBoolean(request.getParameter("deliveryuser"));
		final Integer channelnumber = Integer.parseInt(request.getParameter("channelnumber"));
		final Integer postalcode = Integer.parseInt(request.getParameter("postalcode"));
		final String street = request.getParameter("street");
		final String city = request.getParameter("city");
		// this.userRepository.updateTable(usermodif.getUserid(), lastname,
		// surname, pointofdelivery, deliveryuser, email,
		// phone);
		this.userRepository.updateTable(usermodif.getUserid(), surname, lastname, pointofdelivery, deliveryuser, email,
				phone);
		this.adressRepository.updateTable(usermodif.getUserid(), channelnumber, street, postalcode, city);
		return "redirect:/";
	}

}
