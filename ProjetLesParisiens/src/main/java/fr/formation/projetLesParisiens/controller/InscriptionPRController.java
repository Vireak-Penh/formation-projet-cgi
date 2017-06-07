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

import fr.formation.projetLesParisiens.dao.AccountRepository;
import fr.formation.projetLesParisiens.dao.AdresseRepository;
import fr.formation.projetLesParisiens.dao.HoraireRepository;
import fr.formation.projetLesParisiens.dao.RoleRepository;
import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Account;
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
	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private RoleRepository roleRepository;

	private Integer userid;

	private Integer accountid;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView newAccount() {
		ModelAndView mav = new ModelAndView("createAccount");
		return mav;
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
	public String createAccount(final HttpServletRequest request) {
		final String username = request.getParameter("username");
		final String password = request.getParameter("password");
		final Account account = new Account();
		account.setUsername(username);
		account.setPassword(password);
		account.setEnabled(true);
		account.setRole(this.roleRepository.findOneById(1));
		this.accountRepository.save(account);
		return "redirect:/inscriptionPR/Coordonnees.html";
	}

	@RequestMapping(path = "/Coordonnees", method = RequestMethod.GET)
	public String newUtilisateur(final Model model) {
		model.addAttribute("newUtilisateur", new Utilisateur());
		model.addAttribute("newAdresse", new Adresse());
		return "inscriptionPR";
	}

	@RequestMapping(path = "/Coordonnees", method = RequestMethod.POST)
	public String createUtilisateur(@ModelAttribute("newUtilisateur") final Utilisateur user) {
		if (this.userRepository.findByEmail(user.getEmail()).isEmpty()) {
			user.setAccountid(this.accountid);
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

}
