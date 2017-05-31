package fr.formation.projetLesParisiens.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.HoraireRepository;
import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Horaire;
import fr.formation.projetLesParisiens.entity.Utilisateur;

@Controller
@RequestMapping("/inscriptionPR")
public class InscriptionPRController {

	@Autowired
	private UtilisateurRepository userRepository;
	@Autowired
	private HoraireRepository scheduleRepository;

	private Integer userid;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public String newUtilisateur(final Model model) {
		model.addAttribute("newUtilisateur", new Utilisateur());
		return "inscriptionPR";
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
	public String createUtilisateur(@ModelAttribute("newUtilisateur") final Utilisateur user) {
		if (this.userRepository.findByEmail(user.getEmail()).isEmpty()) {
			this.userRepository.save(user);
			this.userid = user.getUserid();
			return "redirect:/inscriptionPR/addSchedule.html";
		} else {
			return "redirect:/inscriptionPR/countExists.html";

		}

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

}
