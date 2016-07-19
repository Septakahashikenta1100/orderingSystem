<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<Div Align="center">
				<form action="/system/Register" target="toppage2" method="POST">
					<input type=submit value="発注登録">
				</form>
  <br><form action="/system/partsod" target="toppage2" method="POST">
					<input type=submit value="部品注文">
				</form><br>
 <form action="/system/List Updates" target="toppage2" method="GET">
					<input type=submit value="発送準備">
  </form>
  <br>
</Div>
</body>
</html>