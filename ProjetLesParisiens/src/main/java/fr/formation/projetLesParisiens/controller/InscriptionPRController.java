package fr.formation.projetLesParisiens.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.formation.projetLesParisiens.dao.UtilisateurRepository;
import fr.formation.projetLesParisiens.entity.Utilisateur;

@Controller
@RequestMapping("/inscriptionPR")
public class InscriptionPRController {

	@Autowired
	private UtilisateurRepository repository;

	@RequestMapping("/index")
	public String index(final HttpServletRequest request) {
		final String lastname = request.getParameter("lastname");
		final String surname = request.getParameter("surname");
		final Boolean pointofdelivery = Boolean.parseBoolean(request.getParameter("PR"));
		final Utilisateur user = new Utilisateur();
		user.setLastname(lastname);
		user.setSurname(surname);
		user.setPointofdelivery(pointofdelivery);
		this.repository.save(user);
		return "redirect:".concat("/");

	}
}
