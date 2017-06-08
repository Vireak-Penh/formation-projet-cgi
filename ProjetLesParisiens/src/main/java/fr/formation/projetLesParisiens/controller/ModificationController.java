package fr.formation.projetLesParisiens.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.projetLesParisiens.dao.AccountRepository;
import fr.formation.projetLesParisiens.dao.AdresseRepository;
import fr.formation.projetLesParisiens.dao.HoraireRepository;
import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Account;

@Controller
@RequestMapping("/Modification")
public class ModificationController {

	@Autowired
	private UtilisateurRepository userRepository;

	@Autowired
	private AdresseRepository adressRepository;

	@Autowired
	private AccountRepository accountRepository;

	@Autowired
	private HoraireRepository horaireRepository;

	private Integer usermodif;

	// @RequestMapping(path = "/index", method = RequestMethod.GET)
	// public ModelAndView formulaireEmail() {
	// ModelAndView mav = new ModelAndView("emailForModif");
	// Authentication authentication =
	// SecurityContextHolder.getContext().getAuthentication();
	// mav.getModel().put("username", authentication.getName());
	// return mav;
	// }
	//
	// @RequestMapping(path = "/index", method = RequestMethod.POST)
	// public String sendEmail(final HttpServletRequest request) {
	// if
	// (this.userRepository.findByEmail(request.getParameter("userEmail")).size()
	// > 0) {
	// this.usermodif =
	// this.userRepository.findByEmail(request.getParameter("userEmail")).get(0);
	// return "redirect:/inscriptionPR/modifyAccount.html";
	// } else {
	// return "redirect:/inscriptionPR/modifyWhichAccount.html";
	// }
	// }

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView afficheModifyAccount() {
		ModelAndView mav = new ModelAndView("modifiercompte");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentUserName = new String("defaut");
		Integer bool = 0;
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			currentUserName = authentication.getName();
			bool = 1;
		}
		mav.getModel().put("username", currentUserName);
		mav.getModel().put("bool", bool);
		Account account = this.accountRepository.findOneByUsername(currentUserName);
		Integer thisuserid = this.userRepository.findOneByAccountid(account.getAccountid()).getUserid();
		this.usermodif = thisuserid;
		mav.getModel().put("UserModif", this.userRepository.findOneByAccountid(account.getAccountid()));
		mav.getModel().put("AdressModif", this.adressRepository.findByUserid(thisuserid).get(0));
		mav.getModel().put("schedule", this.horaireRepository.findByUserid(thisuserid));
		mav.getModel().put("sizeSchedule", this.horaireRepository.findByUserid(thisuserid).size());
		return mav;
	}

	@RequestMapping(path = "/index", method = RequestMethod.POST)
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
		final Integer sizeSchedule = Integer.parseInt(request.getParameter("sizeSchedule"));
		String scheduleid = new String();
		String day = new String();
		Boolean morning = new Boolean(true);
		Boolean afternoon = new Boolean(true);
		for (int i = 0; i < sizeSchedule; i++) {
			scheduleid = request.getParameter(Integer.toString(i));
			day = request.getParameter("day".concat(Integer.toString(i)));
			morning = Boolean.parseBoolean(request.getParameter("morning".concat(Integer.toString(i))));
			afternoon = Boolean.parseBoolean(request.getParameter("afternoon".concat(Integer.toString(i))));
			this.horaireRepository.updateTable(Integer.parseInt(scheduleid), day, morning, afternoon);
		}
		// this.userRepository.updateTable(usermodif.getUserid(), lastname,
		// surname, pointofdelivery, deliveryuser, email,
		// phone);
		this.userRepository.updateTable(usermodif, surname, lastname, pointofdelivery, deliveryuser, email, phone);
		this.adressRepository.updateTable(usermodif, channelnumber, street, postalcode, city);
		return "redirect:/";
	}

}
