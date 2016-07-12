<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<style type="text/css">
p {
	text-align: center;
	margin-top: 100px;
}

div {
	text-align: right;
	text-align: bottom;
	margin-top: 100px;
}
</style>
</head>

<body>
	<h1>進捗率を更新します</h1>
	<form:form modelAttribute="Formmodel">
		<p>
			進捗率<input type="number" name="percent" size="2" maxlength="3"
				required>%
		</p>


		<div>
			<button name="pro">更新する</button>
			<br>
			<br>
			<br>
			<input type="button" name="list" value="一覧画面へ"
				onclick="location.href='http://localhost:8080/p/list'">
		</div>
	</form:form>

</body>
</html>