<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>発注商品登録画面</title>
<link rel="stylesheet" type="text/css" href="resources/css/Register.css" />
</head>
<body bgcolor ="#FFD5EC">
	<div id="blook1">
		<div id="blook2">
			<h1 align="center">
				<b>商品登録</b>
			</h1>
			<form:form modelAttribute="FromModel" action="/system/Register_re">
					<p class="mb1">
					登録日<select name="day1">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					</select>月
						<select name="day2">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
					</select>日
				</p>
				<div id="width">
					<p class="mb1">
						品番<select name="order1">
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
						発注数<input type="number" name="order2" min="5" step="5">
					</p>
				</div>
				<p class="mb2">
					登録者名<input type="text" name="name" value="${name}" placeholder="例：田中 幸子"
					pattern="[^\x20-\x7E\uFF21-\uFF3A\uFF41-\uFF5A\uFF10-\uFF19]*">
				</p>
				<div id="width">
					<p class="mb2">
						納品完了予定日
						<select name="comp1">
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						</select>年
						<select name="comp2">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					</select>月
						<select name="comp3">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
					</select>日
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