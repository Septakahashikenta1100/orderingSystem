<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=“ja”>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

</head>

<title>結果ページ</title>
<style>
body {
	font-family: "Impact", Meiryo, メイリオ, sans-serif;
	background: #FFD5EC;
}
</style>
<body>
	<form:form modelAttribute="FormModel" action="/system/printout">
		<h1>
			注文しました！<br> 注文書の印刷に進みます！
		</h1>
		<div Align="center">
			<p>
				<input type="hidden" name="hidden1" value="${PartsA}"> <input
					type="hidden" name="hidden2" value="${PartsB}"> <input
					type="hidden" name="hidden3" value="${PartsC}"> <input
					type="hidden" name="hidden4" value="${PartsD}"> <input
					type="hidden" name="hidden5" value="${PartsE}"> <input
					type="hidden" name="hidden6" value="${Month}"> <input
					type="hidden" name="hidden7" value="${Day}"> <input
					type="hidden" name="hidden8" value="${Odname}"> <a href=""><img
					src="http://matomame.jp/assets/images/matome/a17cb551a5d2997a4ea3/4c4c898702671f24e98984319958d8d8.jpg?t=1439258533"
					alt="NEXTindex" style="height: 443px; width: 575px"></a>
			</p>
		</div>
		<br>
		<div Align="right">
			<input type="submit" value="印刷する">
		</div>
	</form:form>
</body>
</html>