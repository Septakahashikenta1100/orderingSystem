 <%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>

<head>

<style>
		<%@ include file="../css/home.css" %>
</style>
<title>納品書印刷画面</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>

<div id="site-box3">

     <h1>納品書</h1>
     <br>
     <div id = "com5"><h2>(お客様の名前が入ります)様</h2>
                      <h2>郵便番号:（入力された値が入ります）</h2>
                      <h2>住所1(都道府県):（入力された値が入ります）</h2>
                      <h2>住所2(市区町村、番地):（入力された値が入ります）</h2>
                      <h2>住所3(建物名、アパート名など):（入力された値が入ります）</h2></div>
     <div id = "com5"><h2>㈱高橋プリンター</h2>
                      <h2>東京都千代田区神田小川町3-8-10</h2>
                      <h2>電話番号:03-0117-4147</h2>
                      <h2>FAX番号:03-0508-4147</h2>
                      <h2>メールアドレス:tp-factory@tpf.co.jp</h2></div>
<div id="site-box4">
     <div id = "com6"><h2>品番</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
</div>
<div id="site-box4">
     <div id = "com6"><h2>品名</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
</div>
<div id="site-box4">
     <div id = "com6"><h2>発注数</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
</div>
<div id="site-box4">
     <div id = "com6"><h2>単価</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
</div>
<div id="site-box4">
     <div id = "com6"><h2>金額</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
     <div id = "com7"><h2>（入力された値）</h2></div>
</div>

     <div id = "com8"><h1>合計発注額:（入力された額）円</h1></div>
     <div id = "com8"><h2>発注者:（入力された値が入ります）</h2></div>

<div id="com5">
     <a href="#" onclick="window.print();return false;"><input type="button" value="印刷する" /></a>
     <a href="mailto:info@example.com"><input type="button" value="完了報告をメールで送る" /></a>
     <input type="button" value="発注画面" />
</div>

</div>

</body>
</html>