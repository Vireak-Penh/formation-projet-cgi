package fr.formation.projetLesParisiens.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@Autowired
	private MessageSource messageSource;

	/**
	 * @param messageSource
	 *            the messageSource to set
	 */
	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	// on ne met jamais les extensions dans les requestmapping (index et pas
	// index.jsp) (il indique le point d'entrée)
	@RequestMapping(path = "/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
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
		return mav;
	}

}
