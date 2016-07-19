 <%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>

<html>

<head>

<style type="text/css" media="print">
<!-- .noPrint{ display:none ;} -->
</style>

<style>
		<%@ include file="../css/home.css" %>
</style>

<title>納品書印刷画面</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

 <script type="text/javascript">
<!--

function disp(){
    if(window.confirm('発送処理完了。発送準備ボタンより戻り表の確認をお願いします。')){

    }
}
</script>

</head>
<body>

<c:forEach items="${data}" var="obj">
<form:form modelAttribute="FormModel" >

<div id="site-box3">

     <h1>納品書</h1>
     <br>
     <div id = "com5"><h2><c:out value="${obj.name}" />様</h2>
                      <h2>郵便番号:<c:out value="${obj.postalcode1}" /><c:out value="${obj.postalcode2}" /></h2>
                      <h2>住所:<c:out value="${obj.address1}" /></h2>
                      <h2>住所:<c:out value="${obj.address2}" /></h2>
                      <h2>住所:<c:out value="${obj.address3}" /></h2></div>
     <div id = "com5"><h2>㈱高橋プリンター</h2>
                      <h2>東京都千代田区神田小川町3-8-10</h2>
                      <h2>電話番号:03-0117-4147</h2>
                      <h2>FAX番号:03-0508-4147</h2>
                      <h2>メールアドレス:tp-factory@tpf.co.jp</h2></div>
<div id="site-box4">
     <div id = "com6"><h2>納品完了予定</h2></div>
     <div id = "com7"><h2><c:out value="${obj.completion1}" /></h2></div>

</div>
<div id="site-box4">
     <div id = "com6"><h2>品番</h2></div>
     <div id = "com7"><h2><c:out value="${obj.modelnumber}" /></h2></div>

</div>
<div id="site-box4">
     <div id = "com6"><h2>発注数</h2></div>
     <div id = "com7"><h2><c:out value="${obj.ordernumber}" /></h2></div>

</div>
<div id="site-box4">
     <div id = "com6"><h2>単価</h2></div>
     <div id = "com7"><h2><c:out value="${obj.modelmoney}" /></h2></div>

</div>
<div id="site-box4">
     <div id = "com6"><h2>金額</h2></div>
     <div id = "com7"><h2><c:out value="${obj.ordernumber * obj.modelmoney}" />円</h2></div>

</div>
<div id="site-box5">
     <h1>合計発注額:<c:out value="${obj.ordernumber * obj.modelmoney}" />円</h1><h2>発注者:<c:out value="${obj.ordername}" /></h2>
</div>

<div id="site-box5">
<div id="com5">
     <a href="#" onclick="window.print();return false;"><input type="button" class="noPrint" value="印刷する" /></a>
     <a href="mailto:info@example.com"><input type="button" class="noPrint" value="完了報告をメールで送る" /></a>
     <p><input type="button" value="発送準備完了" class="noPrint"  onClick="disp()"></p>
</div>
</div>

</div>

<input type="hidden" name="id" value="${obj.orderid}">

</form:form>
</c:forEach>

</body>
</html>