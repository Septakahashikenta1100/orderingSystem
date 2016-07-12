<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css">

<title>menu</title>
</head>
<Div Align="center">
 <h2>MENU</h2>
</Div>
<body bgcolor="#99ff99">


  <form action ="http://localhost:8080/print/hoge.jsp" target="main" method=post>
   <br>
  <input type="submit" value="発注登録"><br> <br></form>
  <form action ="http://localhost:8080/print/hoga.jsp" target="main" method=post>
   <br>
  <input type="submit" value="進捗確認"><br> <br></form>
  <form action ="http://localhost:8080/print/partsod" target="main" method=GET>
   <br>
  <input type="submit" value="部品注文"><br> <br></form>
  <form action ="http://localhost:8080/print/hogi.jsp" target="main" method=post>
   <br>
  <input type="submit" value="発送準備"><br> <br></form>


</body>
</html>