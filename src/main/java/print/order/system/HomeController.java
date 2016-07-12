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

	//メニューバー(管理者用)
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu(Locale locale, Model model) {
		return "menu";
	}

	//トップページ管理者
	@RequestMapping(value = "/toppage2", method = RequestMethod.GET)
	public String toppage2(Locale locale, Model model) {
		return "toppage2";
	}

	//メニューバー(開発者用)
	@RequestMapping(value = "/menu2", method = RequestMethod.GET)
	public String menu2(Locale locale, Model model) {
		return "menu2";
	}
	//トップページ開発者
	@RequestMapping(value = "/toppage1", method = RequestMethod.GET)
	public String toppage1(Locale locale, Model model) {
		return "toppage1";
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

		if (day1 =="" || day2 == "" || order1 == "" || order2 == "" || name == ""
				|| completion1 == "" || completion2 == "" || completion3 == "") {
			return "Registerfai";
		}


		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
				"select count(partstb.parts) as count "+
						"from modeltb inner join "+
						"relationtb on modeltb.modelid = relationtb.modelid "+
						"inner join partstb on "+
						"partstb.partsid = relationtb.partsid "+
						"where modeltb.modelid = '"+ order1 +"'");

		List<Map<String, Object>>  list2 = jdbcTemplate.queryForList(
				"select "+
						"partstb.stockparts - relationtb.partsnumber * '"+ order2 +"' as total "+
						"from modeltb inner join "+
						"relationtb on modeltb.modelid = relationtb.modelid "+
						"inner join partstb on "+
						"partstb.partsid = relationtb.partsid "+
						"where modeltb.modelid = '"+ order1 +"'");

		List<Map<String, Object>>  list3 = jdbcTemplate.queryForList(
				"select count(partstb.parts) as count "+
						"from modeltb inner join "+
						"relationtb on modeltb.modelid = relationtb.modelid "+
						"inner join partstb on "+
						"partstb.partsid = relationtb.partsid "+
						"where modeltb.modelid = '"+ order1 +"'");

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);

		String list3re = String.valueOf(list3.get(0).get("count"));
		int con1 = Integer.parseInt(list3re);
		int i = 0;
		int cou2 = 0;
		while (i < con1) {

			String list2re =String.valueOf(list2.get(cou2).get("total"));
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
		String hidden1 = fm.getHidden1();//月
		String hidden2 = fm.getHidden2();//日
		String hidden3 = fm.getHidden3();//品番
		String hidden4 = fm.getHidden4();//発注数
		String hidden5 = fm.getHidden5();//管理者名
		String hidden6 = fm.getHidden6();//納品年
		String hidden7 = fm.getHidden7();//納品月
		String hidden8 = fm.getHidden8();//納品日
		String hidden9 = fm.getHidden9();//カウント数

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

		if (name =="" || post1 == "" || post2 == "" || order1 == ""
				|| address1 == "" || address2 == "" || tel == "") {

			return "Registerfai2";
		}
		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
				"select * from modeltb where modelid = "+ hidden4 +"");

		model.addAttribute("list", list);
		return "Registersuccess";
	}
	//登録完了処理
	@RequestMapping(value = "/Registersuccess2", method = RequestMethod.POST)
	public String Registersuccess2(FormModel fm, Model model) {
		String hidden1 = fm.getHidden1();//月
		String hidden2 = fm.getHidden2();//日
		String hidden3 = fm.getHidden3();//品番(名前)
		String hidden4 = fm.getHidden4();//発注数
		String hidden5 = fm.getHidden5();//管理者名
		String hidden6 = fm.getHidden6();//納品年
		String hidden7 = fm.getHidden7();//納品月
		String hidden8 = fm.getHidden8();//納品日
		String hidden9 = fm.getHidden9();//カウント数
		String hidden10 = fm.getHidden10();//氏名
		String hidden11 = fm.getHidden11();//〒1
		String hidden12 = fm.getHidden12();//〒2
		String hidden13 = fm.getHidden13();//住所1
		String hidden14 = fm.getHidden14();//住所2
		String hidden15 = fm.getHidden15();//住所3
		String hidden16 = fm.getHidden16();//電話番号
		String hidden17 = fm.getHidden17();//金額
		String hidden18 = fm.getHidden18();//品番ID
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

		jdbcTemplate.execute(
				"insert into ordertb(ordername, orderday1, orderday2, completion1, completion2, completion3,"
						+ " modelnumber, ordernumber, modelmoney,"
						+ "progress, name, postalcode1, postalcode2, address1, address2, address3, tel) values("
						+ "'"+ hidden5 +"',"+ hidden1 +","+ hidden2 +","+ hidden6 +","+ hidden7 +","+ hidden8 +","
						+ "'"+ hidden3 +"',"+ hidden4 +","
						+ ""+ total +",0,'"+ hidden10 +"','"+ hidden11 +"','"+ hidden12 +"',"
						+ "'"+ hidden13 +"','"+ hidden14 +"','"+ hidden15 +"','"+ hidden16 +"')"
				);

		List<Map<String, Object>>  list = jdbcTemplate.queryForList(
				"select partstb.stockparts - relationtb.partsnumber * '"+ hidden4 +"' as totalscore "+
						"from modeltb inner join "+
						"relationtb on modeltb.modelid = relationtb.modelid "+
						"inner join partstb on "+
						"partstb.partsid = relationtb.partsid "+
						"where modeltb.modelid = '"+ hidden18 +"'");

		List<Map<String, Object>>  list2 = jdbcTemplate.queryForList(
				"select partstb.partsid "+
						"from modeltb inner join "+
						"relationtb on modeltb.modelid = relationtb.modelid "+
						"inner join partstb on "+
						"partstb.partsid = relationtb.partsid "+
						"where modeltb.modelid = '"+ hidden18 +"'");

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		int con = Integer.parseInt(hidden9);
		int i = 0;
		int coun = 0;
		while (i < con) {
			i++;
			Object listre = (list.get(coun).get("totalscore"));
			Object list2re = (list2.get(coun).get("partsid"));

			jdbcTemplate.execute(
					"update partstb set stockparts= '"+ listre +"' where partsid = '"+ list2re +"'");
			coun++;
		}
		return "Registersuccess2";
	}
}
