package print.order.system;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@Autowired
	private JdbcTemplate jdbcTemplate;


	@RequestMapping(value = "/Sample", method = RequestMethod.GET)
	public String Sample(FormModel fm, Model model) {
		return "Sample";
	}
	@RequestMapping(value = "/Sample_re", method = RequestMethod.POST)
	public String Sample_re(FormModel fm, Model model) {
		int cou = 0;
		String order1 = fm.getOrder1();
		String order2 = fm.getOrder2();
		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
		"select partstb.partsid, "+
		"partstb.stockparts - relationtb.partsnumber * '"+ order2 +"' as total "+
		"from modeltb inner join "+
		"relationtb on modeltb.modelid = relationtb.modelid "+
		"inner join partstb on "+
		"partstb.partsid = relationtb.partsid "+
		"where modeltb.modelid = '"+ order1 +"'");
		String a = String.valueOf(list.get(0).get("total"));
		String b = String.valueOf(list.get(1).get("total"));
		String c = String.valueOf(list.get(2).get("total"));
		String d = String.valueOf(list.get(3).get("total"));
		String e = String.valueOf(list.get(4).get("total"));
		int f = Integer.parseInt(a);
		int g = Integer.parseInt(b);
		int h = Integer.parseInt(c);
		int i = Integer.parseInt(d);
		int j = Integer.parseInt(e);
		model.addAttribute("list", list);

		if ( f > cou && g > cou && h > cou && i > cou && j > cou ) {
			return "Registerfaiparts";
		}
		return "Sample2";
	}
	@RequestMapping(value = "/Sample_rere", method = RequestMethod.GET)
	public String Sample2(FormModel fm, Model model) {

		return "Sample2";
	}

	//ログイン画面
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		return "Login";
	}
	//ログイン処理
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String Login_re(FormModel fm, Model model) {
		String id = fm.getId();
		String password = fm.getPassword();

		if (id.equals("admin") || password.equals("admin") ) {
			return "Frame";
		}  else if ( id.equals("user") || password.equals("user")) {
			return "Frame2";
		} else {
		return "Loginerrer";
		}
	}

	//メニューバー
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu(Locale locale, Model model) {
		return "menu";
	}

	//トップページ管理者
	@RequestMapping(value = "/toppage2", method = RequestMethod.GET)
	public String toppage2(Locale locale, Model model) {
		return "toppage2";
	}

	//登録完了したときの遷移場所
	@RequestMapping(value = "/toppage2_re", method = RequestMethod.POST)
	public String toppage2_re(Locale locale, Model model) {
		return "toppage2";
	}

	//商品登録画面
	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public String Register(Locale locale, Model model) {
		return "Register";
	}

	//商品登録処理
	@RequestMapping(value = "/Register_re", method = RequestMethod.POST)
	public String Register_re(FormModel fm, Model model) {

		String day1 = fm.getDay1();
		String day2 = fm.getDay2();
		String day3 = fm.getDay3();
		String order1 = fm.getOrder1();
		String order2 = fm.getOrder2();
		String name = fm.getName();
		String completion = fm.getComp();

		if (day1 =="" || day2 == "" || day3 == "" || order1 == ""
				|| order2 == "" || name == "" || completion == "") {
			model.addAttribute("day1", day1);
			model.addAttribute("day2", day2);
			model.addAttribute("day3", day3);
			model.addAttribute("order1", order1);
			model.addAttribute("order2", order2);
			model.addAttribute("name", name);
			model.addAttribute("completion", completion);
			return "Registerfai";
		}
		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
			"select partstb.partsid, "+
			"partstb.stockparts - relationtb.partsnumber * "+ order2 +" as total "+
			"from modeltb inner join "+
			"relationtb on modeltb.modelid = relationtb.modelid "+
			"inner join partstb on "+
			"partstb.partsid = relationtb.partsid "+
			"where modeltb.modelid = "+ order1 +"");
			model.addAttribute("list", list);
			model.addAttribute("day1", day1);
			model.addAttribute("day2", day2);
			model.addAttribute("day3", day3);
			model.addAttribute("order1", order1);
			model.addAttribute("order2", order2);
			model.addAttribute("name", name);
			model.addAttribute("completion", completion);
			return "Register2";
	}

	//顧客情報登録処理
	@RequestMapping(value = "/Register2", method = RequestMethod.POST)
	public String Register2(FormModel fm, Model model) {
		String name = fm.getName();
		String post1 = fm.getPost1();
		String post2 = fm.getPost2();
		String order1 = fm.getOrder1();
		String address1 = fm.getAddress1();
		String address2 = fm.getAddress2();
		String tel = fm.getTel();
		String hidden1 = fm.getHidden1();
		String hidden2 = fm.getHidden2();
		String hidden3 = fm.getHidden3();
		String hidden4 = fm.getHidden4();
		String hidden5 = fm.getHidden5();
		String hidden6 = fm.getHidden6();
		String hidden7 = fm.getHidden7();
		String hidden8 = fm.getHidden8();
		String hidden9 = fm.getHidden9();
		String hidden10 = fm.getHidden10();

		if (name =="" || post1 == "" || post2 == "" || order1 == ""
				|| address1 == "" || address2 == "" || tel == "") {
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
			model.addAttribute("hidden10", hidden10);

			return "Registerfai2";
		}
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
		model.addAttribute("hidden10", hidden10);
		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
				"select * from modeltb where modelid = "+ hidden4 +"");

		model.addAttribute("list", list);
		return "Registersuccess";
	}
	//
	@RequestMapping(value = "/Registersuccess2", method = RequestMethod.POST)
	public String Registersuccess2(FormModel fm, Model model) {
		String hidden1 = fm.getHidden1();//年
		String hidden2 = fm.getHidden2();//月
		String hidden3 = fm.getHidden3();//日
		String hidden4 = fm.getHidden4();//品番
		String hidden5 = fm.getHidden5();//発注数
		String hidden6 = fm.getHidden6();//記入者名
		String hidden7 = fm.getHidden7();//納品完了予定
		String hidden8 = fm.getHidden8();//パーツID
		String hidden9 = fm.getHidden9();//氏名
		String hidden10 = fm.getHidden10();//〒1
		String hidden11 = fm.getHidden11();//〒2
		String hidden12 = fm.getHidden12();//住所1
		String hidden13 = fm.getHidden13();//住所2
		String hidden14 = fm.getHidden14();//住所3
		String hidden15 = fm.getHidden15();//電話番号
		String hidden16 = fm.getHidden16();//金額
		String hidden17 = fm.getHidden17();//残り部品数
		int ordercon = Integer.parseInt(hidden5);
		int money = Integer.parseInt(hidden16);
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

		 jdbcTemplate.execute(
					"insert into ordertb(ordername, orderday, completion, modelnumber, ordernumber, modelmoney,"
					+ "progress, name, postalcode1, postalcode2, address1, address2, address3, tel) values("
					+ "'"+ hidden6 +"',2016"+ hidden2 +""+ hidden3 +","+ hidden7 +",'"+ hidden4 +"',"+ hidden5 +","
					+ ""+ total +",0,'"+ hidden9 +"','"+ hidden10 +"','"+ hidden11 +"',"
					+ "'"+ hidden12 +"','"+ hidden13 +"','"+ hidden14 +"','"+ hidden15 +"')"
					);

		 jdbcTemplate.execute(
			"update partstb set stockparts='"+ hidden17 +"' where id = "+ hidden8 +"");

		return "Registersuccess2";
	}
}
