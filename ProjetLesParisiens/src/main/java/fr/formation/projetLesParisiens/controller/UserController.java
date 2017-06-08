package fr.formation.projetLesParisiens.controller;

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
@RequestMapping("/User")
public class UserController {

	@Autowired
	private UtilisateurRepository userRepository;

	@Autowired
	private HoraireRepository horaireRepository;

	@Autowired
	private AdresseRepository adressRepository;

	@Autowired
	private AccountRepository accountRepository;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView afficheInfoUser() {
		ModelAndView mav = new ModelAndView("userInfo");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Account account = this.accountRepository.findOneByUsername(authentication.getName());
		String currentUserName = new String("defaut");
		Integer bool = 0;
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			currentUserName = authentication.getName();
			bool = 1;
		} else {
			bool = 0;
		}
		mav.getModel().put("username", currentUserName);
		mav.getModel().put("bool", bool);
		mav.getModel().put("user", this.userRepository.findOneByAccountid(account.getAccountid()));
		Integer userid = this.userRepository.findOneByAccountid(account.getAccountid()).getUserid();
		mav.getModel().put("adress", this.adressRepository.findByUserid(userid).get(0));
		mav.getModel().put("schedule", this.horaireRepository.findByUserid(userid));
		return mav;
	}

}
