<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<style type="text/css">
<%@ include file="../css/style.css" %>
</style>
</head>

<body>
	<h1>進捗率を更新します</h1>
	<form:form modelAttribute="Formmodel">
		<p class="update">
			進捗率<input type="number" name="percent" min="1" maxlength="3"
				required>%
		</p>


		<div class="update">
			<button name="pro">更新する</button>
			<br>
			<br>
			<br>
			<input type="button" name="list" value="一覧画面へ"
				onclick="location.href='http://localhost:8080/system/list'">
		</div>
	</form:form>

</body>
</html>