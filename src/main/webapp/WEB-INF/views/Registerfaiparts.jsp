<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>発注商品登録画面</title>
<link rel="stylesheet" type="text/css" href="resources/css/Registerfai.css" />
</head>
<body>
	<div id="blook1">
		<div id="blook2">
			<h1 align="center">
				<b>商品登録</b>
			</h1>
			<form:form modelAttribute="FromModel" action="/system/Register">
				<p class="mb1">
					登録日：20<input type="text" name="day1" style="text-align: right;" value="${day1}" size="1">年
					<input name="day2" type="text" style="text-align: right;" value="${day2}" size="1">月
					<input name="day3" type="text" style="text-align: right;" value="${day3}" size="1">日
				</p>
				<div id="width">
				<p class="mb1">
					品番：<select name="order1">
						<option value="1">PIXUS MG7730F</option>
						<option value="2">PIXUS MG7730</option>
						<option value="3">PIXUS MG6930</option>
						<option value="4">PIXUS MG5730</option>
						<option value="5">PIXUS MG3630</option>
					</select>
				</p>
				</div>
				<div id="width2">
				<p class="mb1">
					発注数:<input type="text" name="order2" value="${order2}" size="3">
				</p>
				</div>
				<p class="mb2">
					登録者名：<input type="text" value="${name}" name="name">
				</p>
				<div id="width">
				<p class="mb2">
					納品完了予定日：<input type="text" value="${completion}" name="comp">
				</p>
				</div>

				<h3>※部品が足りなくて、作成できません。</h3>

				<p class="submit" align="center">
					<input type="submit" value="次へ">
				</p>
			</form:form>
		</div>
	</div>
</body>
</html>