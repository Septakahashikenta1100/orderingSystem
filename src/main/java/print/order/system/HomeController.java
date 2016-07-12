package print.order.system;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(params = "pro", method = RequestMethod.POST)
	public String update(@ModelAttribute FormModel fm, Model model, SessionStatus sessionStatus, HttpSession session) {
		int per = fm.getPercent();

		String id = (String) session.getAttribute("Id");

		if (per > 100) {
			return "ud_fail";
		}
		jdbcTemplate.execute("update ordertb set progress = '" + per + "' where orderid = '" + id + "'");

		return "ud_suc";
	}

	@RequestMapping(params = "update", method = RequestMethod.POST)
	public String up(@ModelAttribute FormModel fm, Model model, SessionStatus sessionStatus, HttpSession session) {
		String number = fm.getUp();
		session.setAttribute("Id", number);

		return "update";
	}

}