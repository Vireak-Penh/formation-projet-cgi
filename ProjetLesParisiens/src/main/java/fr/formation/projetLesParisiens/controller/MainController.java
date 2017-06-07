package fr.formation.projetLesParisiens.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	private static final String KEY_SUFFIX_TITLE = ".title";
	private static final String KEY_SUFFIX_URL = ".url";

	private static Logger LOGGER = LoggerFactory.getLogger(MainController.class);

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
		// final String menus = this.getMessage("menus");
		// getMessage("menus");
		// MainController.LOGGER.debug("Valeur associé à la clé 'menus' : {}",
		// menus);
		// final List<Menu> menulist = new ArrayList<>();
		// if (menus != null && !menus.isEmpty()) {
		// for (final String menu : menus.split(",")) {
		// final String title =
		// this.getMessage(menu.concat(MainController.KEY_SUFFIX_TITLE));
		// final String url =
		// this.getMessage(menu.concat(MainController.KEY_SUFFIX_URL));
		// menulist.add(new Menu(title, url));
		// }
		// }
		// mav.getModel().put("menulist", menulist);
		return mav;
	}

	private String getMessage(final String key) {
		return this.messageSource.getMessage(key, null, Locale.getDefault());
	}

}
