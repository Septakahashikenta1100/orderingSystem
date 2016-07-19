<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang=“ja”>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>注文確認画面</title>
<style>
body {
Meiryo, メイリオ, sans-serif;
	background: #FFD5EC;
}
</style>
</head>
<body>
	<h2>この内容で注文しますか？？</h2>

	<P>
		部品A
		${PartsA}
		個
	</p>
	<br>
	<P>
		部品B
		${PartsB}
		個
	</p>
	<br>
	<P>
		部品C
		${PartsC}
		個
	</p>
	<br>
	<P>
		部品D
		${PartsD}
		個
	</p>
	<br>
	<P>
		部品E
		${PartsE}
		個
	</p>
	<br>
	<br>
	<P>
		日付 2016年
		${Month}月
		${Day}日
	</p>
	<P>
		注文担当者名
		${Odname}
	</p>
	<form:form modelAttribute="FormModel" action="/system/success" >
<input type = "hidden" name = "hidden1" value = "${PartsA}">
<input type = "hidden" name = "hidden2" value = "${PartsB}">
<input type = "hidden" name = "hidden3" value = "${PartsC}">
<input type = "hidden" name = "hidden4" value = "${PartsD}">
<input type = "hidden" name = "hidden5" value = "${PartsE}">
<input type = "hidden" name = "hidden6" value = "${Month}">
<input type = "hidden" name = "hidden7" value = "${Day}">
<input type = "hidden" name = "hidden8" value = "${Odname}">
<input type = "hidden" name = "hidden30" value = "${Day}">
<input type = "hidden" name = "hidden31" value = "${Month}">
<input type = "hidden" name = "hidden50" value = "${PartsA}">
<input type = "hidden" name = "hidden51" value = "${PartsB}">
<input type = "hidden" name = "hidden52" value = "${PartsC}">
<input type = "hidden" name = "hidden53" value = "${PartsD}">
<input type = "hidden" name = "hidden54" value = "${PartsE}">
	<Div Align="right">
		<input type="submit" value="注文確定"
			onclick="location ='http://localhost:8080/system/success'" /> <input
			type="button" value="戻る"
			onclick="history.back(-1)" />

	</Div>
	</form:form>
</body>
</html>