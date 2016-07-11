<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顧客情報登録画面</title>
<link rel="stylesheet" type="text/css" href="resources/css/Register2.css" />
</head>
<body>
	<div id="blook1">
		<div id="blook2">
			<h1 align="center">
				<b>顧客登録 ${list}</b>
			</h1>
			<form:form modelAttribute="FormModel" action="/system/Register2">
				<p class="mb1">
					氏名：<input type="text" name="name">
				</p>
				<div id="width">
					<p class="mb1">
						郵便番号：<input type="text" name="post1" size="1">-<input type="text"
							name="post2" size="3">
					</p>
				</div>
				<div id="width2">
					<p class="mb1">
						住所1(都道府県)：<select name="order1">
							<option value="茨城県">茨城県</option>
							<option value="埼玉県">埼玉県</option>
							<option value="東京都">東京都</option>
							<option value="千葉県">千葉県</option>
							<option value="神奈川県">神奈川県</option>
						</select>
					</p>
				</div>
				<div id="width3">
					<p class="mb1">
						住所2(市区町村、番地)：<input type="text" name="address1">
					</p>
				</div>
				<div id="width4">
					<p class="mb1">
						住所3(マンション名、部屋番号)：<input type="text" name="address2">
					</p>
				</div>
				<div id="width5">
					<p class="mb1">
						電話番号：<input type="text" name="tel">
					</p>

					<input type="hidden" value="${day1}" name="hidden1">
					<input type="hidden" value="${day2}" name="hidden2">
					<input type="hidden" value="${day3}" name="hidden3">
					<input type="hidden" value="${order1}" name="hidden4">
					<input type="hidden" value="${order2}" name="hidden5">
					<input type="hidden" value="${name}" name="hidden6">
					<input type="hidden" value="${completion}" name="hidden7">
					<c:forEach items="${list}" var="obj" >
					<input type="hidden" value="${obj.partsid}" name="hidden8">
					<input type="hidden" value="${obj.total}" name="hidden9">
					</c:forEach>
					<input type="hidden" value="${list}" name="hidden10">
				</div>
				<p class="submit" align="center">
					<input type="submit" value="発注完了">
				</p>
			</form:form>
		</div>
	</div>
</body>
</html>