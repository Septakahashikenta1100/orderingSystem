<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang=“ja”>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>印刷ページ</title>
<style>
body {
Meiryo, メイリオ, sans-serif;
	background: #FFD5EC;
}
</style>
</head>
<body>
	<h3>
		注文書を印刷します。<br> 印刷ボタンをクリックしてください
	</h3>
	<p>
	<br>
	</p>
	－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
	<p>
		<br>
	</p>
	<P>部品A ${PartsA}個</p>
	<br>
	<P>部品B ${PartsB}個</p>
	<br>
	<P>部品C ${PartsC}個</p>
	<br>
	<P>部品D ${PartsD}個</p>
	<br>
	<P>部品E ${PartsE}個</p>
	<br>
	<br>
	<P>日付 2016年${Month}月${Day}日</p>
	<P>注文担当者名 ${Odname}</p>


<br>
<p>
	<br></p><p>
	<br></p>
上記の内容で注文いたしました。
<br>
	－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
<p>
<br>
</p>
	<div Align="right">
		<input type="button" value="印刷" onclick="window.print();" />
	</div>
	<br>
	<div Align="right">
		<input type="button" value="トップに戻る"
			onclick="location='http://localhost:8080/system/toppage2'" />
	</div>
</body>
</html>