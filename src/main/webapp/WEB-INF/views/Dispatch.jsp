<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>

<head>

<style>
		<%@ include file="../css/home.css" %>
</style>

<title>発送指示確認画面</title>

<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body  bgcolor="#FFD5EC">


<form:form modelAttribute="FormModel" action="Registrationupdate" >
<c:forEach items="${data}" var="obj">

<div id="site-box2">

     <div id = "title2"><h2>発送指示確認画面</h2></div>
     <div id = "com1"><h4>商品番号:</h4></div>
     <div id = "com2"><h4><c:out value="${obj.modelnumber}" /></h4></div>
     <div id = "com1"><h4>発注数:</h4></div>
     <div id = "com2"><h4><c:out value="${obj.ordernumber}" /></h4></div>
     <div id = "com1"><h4>郵便番号:</h4></div>
     <div id = "com2"><h4><c:out value="${obj.postalcode1}${obj.postalcode2}" /></h4></div>
     <div id = "com1"><h4>住所1(都道府県):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.address1}" /></h4></div>
     <div id = "com1"><h4>住所2(市区町村、番地):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.address2}" /></h4></div>
     <div id = "com1"><h4>住所3(建物名、アパート名など):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.address3}" /></h4></div>
     <div id = "com1"><h4>電話番号:</h4></div>
     <div id = "com2"><h4><c:out value="${obj.tel}" /></h4></div>
     <div id = "com1"><h4>発注登録者:</h4></div>
     <div id = "com2"><h4><c:out value="${obj.ordername}" /></h4></div>

     <input type="hidden" name="id" value="${obj.orderid}">

     <div id = "com3"><input type="submit" name="conp" value="発送開始"></div>
     <div id = "com4"><input type="submit" name="conf" value="発送内容変更"></div>

</div>

</c:forEach>
</form:form>


</body>
</html>