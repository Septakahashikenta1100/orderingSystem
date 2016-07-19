<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=“ja”>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
</head>
<title>注文ページ</title>
<style>
body {
Meiryo, メイリオ, sans-serif;
	background: #FFD5EC;
}
</style>
</head>
<body>
	<h2>パーツを注文します。 下記に注文数を入力してください。</h2>

	<form:form modelAttribute="FormModel" action="/system/kakunin" >
  <p>
   部品A <input type="number" name="PartsA" min="10" max="500" step="10" style="width:70px;">個<br>
  </p>
  <p>
   部品B <input type="number" name="PartsB" min="10" max="500" step="10" style="width:70px;">個<br>
  </p>
  <p>
   部品C <input type="number" name="PartsC" min="10" max="500" step="10" style="width:70px;">個<br>
  </p>
  <p>
   部品D <input type="number" name="PartsD" min="10" max="500" step="10" style="width:70px;">個<br>
  </p>
  <p>
   部品E <input type="number" name="PartsE" min="10" max="500" step="10" style="width:70px;">個<br>
  </p>
  <p>
   日付 2016年 <input
    type="number" name="Month" min="1" max="12"style="width:50px;">月
     <input type=number name="Day" min="1" max="31"style="width:50px;">日
  </p>
  <P>
   注文担当者名 <input type="text" name="Odname" size="16">
  </p>
  <Div Align="right">
   <button type="submit" value="send">発注する</button>
		</Div>
	</form:form>
	<br><Div Align="right">
		<input type="button" value="トップに戻る"
			onclick="location ='http://localhost:8080/system/toppage2'" />
	</Div>
</body>
</html>
