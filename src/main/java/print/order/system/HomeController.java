package print.order.system;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class HomeController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from ordertb;");
		model.addAttribute("db", list);
		return "list";
	}

	@RequestMapping(params = "list", method = RequestMethod.POST)
	public String logins(Locale locale, Model model) {
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from ordertb;");
		model.addAttribute("db", list);
		return "list";
	}

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String logi(Locale locale, Model model) {

		return "menu";
	}

	@RequestMapping(value = "/Frame", method = RequestMethod.GET)
	public String log(Locale locale, Model model) {

		return "Frame";
	}

	@RequestMapping(params = "inquiry", method = RequestMethod.POST)
	public String aa(@ModelAttribute FormModel fm, Model model, HttpSession session) {
		String quiry = fm.getUp();

		List<Map<String, Object>> lista = jdbcTemplate
				.queryForList("select * from ordertb where ordertb.orderid = " + "'" + quiry + "'");
		model.addAttribute("data", lista);
		session.setAttribute("Id", quiry);
		model.addAttribute("id", quiry);

		return "inquiry";
	}

	@RequestMapping(params = "pro", method = RequestMethod.POST)
	public String update(@ModelAttribute FormModel fm, Model model, SessionStatus sessionStatus, HttpSession session) {
		int per = fm.getPercent();

		String id = (String) session.getAttribute("Id");

		if (per > 100 || per < 0) {
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

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String loginn(@ModelAttribute FormModel fm, SessionStatus sessionStatus, Model model) {
		return "home";

	}

	@RequestMapping(value = "/Frame2", method = RequestMethod.GET)
	public String loginnn(@ModelAttribute FormModel fm, SessionStatus sessionStatus, Model model) {
		return "Frame2";

	}

	@RequestMapping(params = "home", method = RequestMethod.POST)
	public String home(@ModelAttribute FormModel fm, SessionStatus sessionStatus, Model model, HttpSession session) {
		String log_id = fm.getLogin_id();
		String log_pass = fm.getLogin_pass();

		List<Map<String, Object>> log_password = jdbcTemplate.queryForList("select pass from logintb");
		List<Map<String, Object>> log_usercode = jdbcTemplate.queryForList("select user from logintb");
		List<Map<String, Object>> log_cou = jdbcTemplate.queryForList("select count(id) from logintb;");
		session.setAttribute("ifid", log_id);
		Object logincount = (log_cou.get(0).get("count(id)"));
		String log_count = String.valueOf(logincount);
		int log = Integer.parseInt(log_count);
		for (int i = 0; i < log; i++) {
			Object idlist = (log_usercode.get(i).get("user"));
			Object passlist = (log_password.get(i).get("pass"));

			if (log_id.equals(idlist) && log_pass.equals(passlist)) {

				return "login";
			}
		}
		return "login_fail";
	}

	@RequestMapping(params = "login", method = RequestMethod.POST)
	public String top(@ModelAttribute FormModel fm, Locale locale, Model model, HttpSession session) {

		String selectid = (String) session.getAttribute("ifid");
		if (selectid.equals("admin") || selectid.equals("fukushima")) {

			return "Frame2";
		}

		return "Frame";
	}

	@RequestMapping(value = "/toppage2", method = RequestMethod.GET)
	public String user(Locale locale, Model model) {
		return "toppage2";
	}

	@RequestMapping(value = "/toppage1", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		return "toppage1";
	}

	@RequestMapping(value = "/login_fail", method = RequestMethod.GET)
	public String error(Locale locale, Model model) {
		return "login_fail";
	}

	// 高橋さん

	// メニューバー(開発者用)
	@RequestMapping(value = "/menu2", method = RequestMethod.GET)
	public String menu2(Locale locale, Model model) {
		return "menu2";
	}

	// 商品登録画面
	@RequestMapping(params = "Register", method = RequestMethod.GET)
	public String Registera(Locale locale, Model model) {
		return "Register";
	}

	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public String Register(Locale locale, Model model) {
		return "Register";
	}

	// 商品登録処理
	@RequestMapping(value = "/Register_re", method = RequestMethod.POST)
	public String Register_re(FormModel fm, Model model) {

		String day1 = fm.getDay1();
		String day2 = fm.getDay2();
		String order1 = fm.getOrder1();
		String order2 = fm.getOrder2();
		String name = fm.getName();
		String completion1 = fm.getComp1();
		String completion2 = fm.getComp2();
		String completion3 = fm.getComp3();
		model.addAttribute("day1", day1);
		model.addAttribute("day2", day2);
		model.addAttribute("order1", order1);
		model.addAttribute("order2", order2);
		model.addAttribute("name", name);
		model.addAttribute("completion1", completion1);
		model.addAttribute("completion2", completion2);
		model.addAttribute("completion3", completion3);
		if (day1 == "" || day2 == "" || order1 == "" || order2 == "" || name == "" || completion1 == ""
				|| completion2 == "" || completion3 == "") {

			return "Registerfai";
		}

		List<Map<String, Object>> list = jdbcTemplate
				.queryForList("select count(partstb.parts) as count " + "from modeltb inner join "
						+ "relationtb on modeltb.modelid = relationtb.modelid " + "inner join partstb on "
						+ "partstb.partsid = relationtb.partsid " + "where modeltb.modelid = '" + order1 + "'");

		List<Map<String, Object>> list2 = jdbcTemplate
				.queryForList("select " + "partstb.stockparts - relationtb.partsnumber * '" + order2 + "' as total "
						+ "from modeltb inner join " + "relationtb on modeltb.modelid = relationtb.modelid "
						+ "inner join partstb on " + "partstb.partsid = relationtb.partsid "
						+ "where modeltb.modelid = '" + order1 + "'");

		List<Map<String, Object>> list3 = jdbcTemplate
				.queryForList("select count(partstb.parts) as count " + "from modeltb inner join "
						+ "relationtb on modeltb.modelid = relationtb.modelid " + "inner join partstb on "
						+ "partstb.partsid = relationtb.partsid " + "where modeltb.modelid = '" + order1 + "'");

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);

		String list3re = String.valueOf(list3.get(0).get("count"));
		int con1 = Integer.parseInt(list3re);
		int i = 0;
		int cou2 = 0;
		while (i < con1) {

			String list2re = String.valueOf(list2.get(cou2).get("total"));
			double n = Double.parseDouble(list2re);
			cou2++;
			i++;
			model.addAttribute("n", list2re);

			if (n <= 0) {

				return "Registerfaiparts";
			}

		}

		return "Register2";
	}

	// 顧客情報登録処理
	@RequestMapping(value = "/Register2", method = RequestMethod.POST)
	public String Register2(FormModel fm, Model model) {
		String name = fm.getName();
		String post1 = fm.getPost1();
		String post2 = fm.getPost2();
		String order1 = fm.getOrder1();
		String address1 = fm.getAddress1();
		String address2 = fm.getAddress2();
		String tel = fm.getTel();
		String hidden1 = fm.getHidden1();// 月
		String hidden2 = fm.getHidden2();// 日
		String hidden3 = fm.getHidden3();// 品番
		String hidden4 = fm.getHidden4();// 発注数
		String hidden5 = fm.getHidden5();// 管理者名
		String hidden6 = fm.getHidden6();// 納品年
		String hidden7 = fm.getHidden7();// 納品月
		String hidden8 = fm.getHidden8();// 納品日
		String hidden9 = fm.getHidden9();// カウント数

		model.addAttribute("name", name);
		model.addAttribute("post1", post1);
		model.addAttribute("post2", post2);
		model.addAttribute("order1", order1);
		model.addAttribute("address1", address1);
		model.addAttribute("address2", address2);
		model.addAttribute("tel", tel);
		model.addAttribute("hidden1", hidden1);
		model.addAttribute("hidden2", hidden2);
		model.addAttribute("hidden3", hidden3);
		model.addAttribute("hidden4", hidden4);
		model.addAttribute("hidden5", hidden5);
		model.addAttribute("hidden6", hidden6);
		model.addAttribute("hidden7", hidden7);
		model.addAttribute("hidden8", hidden8);
		model.addAttribute("hidden9", hidden9);

		if (name == "" || post1 == "" || post2 == "" || order1 == "" || address1 == "" || address2 == "" || tel == "") {

			return "Registerfai2";
		}
		List<Map<String, Object>> list = jdbcTemplate
				.queryForList("select * from modeltb where modelid = " + hidden3 + "");

		model.addAttribute("list", list);
		return "Registersuccess";
	}

	// 登録完了処理
	@RequestMapping(value = "/Registersuccess2", method = RequestMethod.POST)
	public String Registersuccess2(FormModel fm, Model model) {
		String hidden1 = fm.getHidden1();// 月
		String hidden2 = fm.getHidden2();// 日
		String hidden3 = fm.getHidden3();// 品番(名前)
		String hidden4 = fm.getHidden4();// 発注数
		String hidden5 = fm.getHidden5();// 管理者名
		String hidden6 = fm.getHidden6();// 納品年
		String hidden7 = fm.getHidden7();// 納品月
		String hidden8 = fm.getHidden8();// 納品日
		String hidden9 = fm.getHidden9();// カウント数
		String hidden10 = fm.getHidden10();// 氏名
		String hidden11 = fm.getHidden11();// 〒1
		String hidden12 = fm.getHidden12();// 〒2
		String hidden13 = fm.getHidden13();// 住所1
		String hidden14 = fm.getHidden14();// 住所2
		String hidden15 = fm.getHidden15();// 住所3
		String hidden16 = fm.getHidden16();// 電話番号
		String hidden17 = fm.getHidden17();// 金額
		String hidden18 = fm.getHidden18();// 品番ID
		int ordercon = Integer.parseInt(hidden4);
		int money = Integer.parseInt(hidden17);
		int total = ordercon * money;
		model.addAttribute("hidden1", hidden1);
		model.addAttribute("hidden2", hidden2);
		model.addAttribute("hidden3", hidden3);
		model.addAttribute("hidden4", hidden4);
		model.addAttribute("hidden5", hidden5);
		model.addAttribute("hidden6", hidden6);
		model.addAttribute("hidden7", hidden7);
		model.addAttribute("hidden8", hidden8);
		model.addAttribute("hidden9", hidden9);
		model.addAttribute("hidden10", hidden10);
		model.addAttribute("hidden11", hidden11);
		model.addAttribute("hidden12", hidden12);
		model.addAttribute("hidden13", hidden13);
		model.addAttribute("hidden14", hidden14);
		model.addAttribute("hidden15", hidden15);
		model.addAttribute("hidden16", hidden16);
		model.addAttribute("hidden17", hidden17);
		model.addAttribute("total", total);

		jdbcTemplate
				.execute("insert into ordertb(ordername, orderday1, orderday2, completion1, completion2, completion3,"
						+ " modelnumber, ordernumber, modelmoney,"
						+ "progress, name, postalcode1, postalcode2, address1, address2, address3, tel) values(" + "'"
						+ hidden5 + "'," + hidden1 + "," + hidden2 + "," + hidden6 + "," + hidden7 + "," + hidden8 + ","
						+ "'" + hidden3 + "'," + hidden4 + "," + "" + total + ",0,'" + hidden10 + "','" + hidden11
						+ "','" + hidden12 + "'," + "'" + hidden13 + "','" + hidden14 + "','" + hidden15 + "','"
						+ hidden16 + "')");

		List<Map<String, Object>> list = jdbcTemplate
				.queryForList("select partstb.stockparts - relationtb.partsnumber * '" + hidden4 + "' as totalscore "
						+ "from modeltb inner join " + "relationtb on modeltb.modelid = relationtb.modelid "
						+ "inner join partstb on " + "partstb.partsid = relationtb.partsid "
						+ "where modeltb.modelid = '" + hidden18 + "'");

		List<Map<String, Object>> list2 = jdbcTemplate
				.queryForList("select partstb.partsid " + "from modeltb inner join "
						+ "relationtb on modeltb.modelid = relationtb.modelid " + "inner join partstb on "
						+ "partstb.partsid = relationtb.partsid " + "where modeltb.modelid = '" + hidden18 + "'");

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		int con = Integer.parseInt(hidden9);
		int i = 0;
		int coun = 0;
		while (i < con) {
			i++;
			Object listre = (list.get(coun).get("totalscore"));
			Object list2re = (list2.get(coun).get("partsid"));

			jdbcTemplate.execute("update partstb set stockparts= '" + listre + "' where partsid = '" + list2re + "'");
			coun++;
		}
		return "Registersuccess2";
	}

	// 相崎さん

	@RequestMapping(value = "/partsod", method = RequestMethod.POST)
	public String logx(FormModel fm, Model model) {
		model.addAttribute("FormModel", fm);
		return "partsod";
	}

	@RequestMapping(value = "/kakunin", method = RequestMethod.POST)
	public String log(FormModel fm, Model model) {
		String partsA = fm.getPartsA();
		String partsB = fm.getPartsB();
		String partsC = fm.getPartsC();
		String partsD = fm.getPartsD();
		String partsE = fm.getPartsE();
		String month = fm.getMonth();
		String day = fm.getDay();
		String odname = fm.getOdname();

		String a = partsA;
		String b = partsB;
		String c = partsC;
		String d = partsD;
		String e = partsE;
		String f = month;
		String g = day;
		String h = odname;
		model.addAttribute("PartsA", partsA);
		model.addAttribute("PartsB", partsB);
		model.addAttribute("PartsC", partsC);
		model.addAttribute("PartsD", partsD);
		model.addAttribute("PartsE", partsE);
		model.addAttribute("Month", month);
		model.addAttribute("Day", day);
		model.addAttribute("Odname", odname);

		if (a == "" || b == "" || c == "" || d == "" || e == "" || f == "" || g == "" || h == "") {

			return "/miss";

		} else {

			return "/kakunin";
		}
	}

	// 登録成功
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String loglo(FormModel fm, Model model) {
		String hidden1 = fm.getHidden1();
		String hidden2 = fm.getHidden2();
		String hidden3 = fm.getHidden3();
		String hidden4 = fm.getHidden4();
		String hidden5 = fm.getHidden5();
		String hidden6 = fm.getHidden6();
		String hidden7 = fm.getHidden7();
		String hidden8 = fm.getHidden8();
		model.addAttribute("PartsA", hidden1);
		model.addAttribute("PartsB", hidden2);
		model.addAttribute("PartsC", hidden3);
		model.addAttribute("PartsD", hidden4);
		model.addAttribute("PartsE", hidden5);
		model.addAttribute("Month", hidden6);
		model.addAttribute("Day", hidden7);
		model.addAttribute("Odname", hidden8);
		int daydata = fm.getHidden30();
		int monthdata = fm.getHidden31();
		int pa = fm.getHidden50();
		int pb = fm.getHidden51();
		int pc = fm.getHidden52();
		int pd = fm.getHidden53();
		int pe = fm.getHidden54();
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from partstb");
		Object partsa = String.valueOf(list.get(0).get("stockparts"));
		Object partsb = String.valueOf(list.get(1).get("stockparts"));
		Object partsc = String.valueOf(list.get(2).get("stockparts"));
		Object partsd = String.valueOf(list.get(3).get("stockparts"));
		Object partse = String.valueOf(list.get(4).get("stockparts"));
		jdbcTemplate.execute("update partstb set stockparts= '" + hidden1 + "'+'" + partsa + "' where partsid =1");

		jdbcTemplate.execute("update partstb set stockparts= '" + hidden2 + "'+'" + partsb + "' where partsid =2");

		jdbcTemplate.execute("update partstb set stockparts= '" + hidden3 + "'+'" + partsc + "' where partsid =3");

		jdbcTemplate.execute("update partstb set stockparts= '" + hidden4 + "'+'" + partsd + "' where partsid =4");

		jdbcTemplate.execute("update partstb set stockparts= '" + hidden5 + "'+'" + partse + "' where partsid =5");

		jdbcTemplate.execute("insert into partsordertb(partsA, partsB,partsC,partsD,partsE,orderday1,orderday2,name) "
				+ "values ('" + hidden1 + "','" + hidden2 + "','" + hidden3 + "','" + hidden4 + "','" + hidden5 + "','"
				+ hidden6 + "','" + hidden7 + "','" + hidden8 + "')");
		if (monthdata < 13 && monthdata > 0 && daydata < 32 && daydata > 0 && pa >= 0 && pb >= 0 && pc >= 0 && pd >= 0
				&& pe >= 0) {

			return "success";
		}

		return "miss";
	}

	// 登録失敗
	@RequestMapping(value = "/miss", method = RequestMethod.GET)
	public String logg(FormModel fm, Model model) {
		return "miss";
	}

	// 大中さん

	// 印刷
	@RequestMapping(value = "/printout", method = RequestMethod.POST)
	public String logh(FormModel fm, Model model) {

		String hidden1 = fm.getHidden1();
		String hidden2 = fm.getHidden2();
		String hidden3 = fm.getHidden3();
		String hidden4 = fm.getHidden4();
		String hidden5 = fm.getHidden5();
		String hidden6 = fm.getHidden6();
		String hidden7 = fm.getHidden7();
		String hidden8 = fm.getHidden8();

		model.addAttribute("PartsA", hidden1);
		model.addAttribute("PartsB", hidden2);
		model.addAttribute("PartsC", hidden3);
		model.addAttribute("PartsD", hidden4);
		model.addAttribute("PartsE", hidden5);
		model.addAttribute("Month", hidden6);
		model.addAttribute("Day", hidden7);
		model.addAttribute("Odname", hidden8);

		return "printout";

	}

	@RequestMapping(value = "/List Updates", method = RequestMethod.GET)
	public String ListUpdates(Locale locale, Model model) {
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from ordertb ");
		model.addAttribute("db", list);
		model.addAttribute("id", list.get(0).get("id"));
		return "List Updates";
	}

	@RequestMapping(value = "/List Updates", method = RequestMethod.POST)
	public String ListUpdate(@ModelAttribute FormModel fm, Model model, HttpSession session) {
		String quiry = fm.getUp();
		List<Map<String, Object>> lista = jdbcTemplate
				.queryForList("select * from ordertb where ordertb.orderid = " + "'" + quiry + "'");
		model.addAttribute("data", lista);
		session.setAttribute("Id", quiry);
		model.addAttribute("id", quiry);
		return "Dispatch";
	}

	@RequestMapping(value = "Registrationupdate", params = "conf", method = RequestMethod.POST)
	public String Registrationupdate(@ModelAttribute FormModel fm, Model model, HttpSession session) {
		String quiry = fm.getId();
		List<Map<String, Object>> lista = jdbcTemplate
				.queryForList("select * from ordertb where ordertb.orderid = " + "'" + quiry + "'");
		model.addAttribute("data", lista);
		session.setAttribute("Id", quiry);
		model.addAttribute("id", quiry);

		return "Registrationupdate";
	}

	@RequestMapping(value = "Registrationupdate", params = "conp", method = RequestMethod.POST)
	public String Statementofdelivery(@ModelAttribute FormModel fm, Model model, HttpSession session) {
		String quiry = fm.getId();
		List<Map<String, Object>> lista = jdbcTemplate
				.queryForList("select * from ordertb where ordertb.orderid = " + "'" + quiry + "'");
		model.addAttribute("data", lista);
		session.setAttribute("Id", quiry);
		model.addAttribute("id", quiry);

		jdbcTemplate.execute("update ordertb set progress='" + 120 + "'where orderid = " + quiry + ";");

		return "Statementofdelivery";
	}

	@RequestMapping(value = "Registrationupdate", params = "update", method = RequestMethod.POST)
	public String Registrationupdates(@ModelAttribute FormModel fm, Model model, HttpSession session) {
		String quiry = fm.getId();
		String postalcode1 = fm.getpostalcode1();
		String postalcode2 = fm.getpostalcode2();
		String address1 = fm.getaddress1();
		String address2 = fm.getaddress2();
		String address3 = fm.getaddress3();
		String tel = fm.getTel();
		jdbcTemplate.execute("update ordertb set postalcode1='" + postalcode1 + "', postalcode2='" + postalcode2 + "',"
				+ "address1='" + address1 + "',address2='" + address2 + "',address3='" + address3 + "'," + "tel='" + tel
				+ "'where orderid = " + quiry + ";");
		return "Update.success";
	}
}
