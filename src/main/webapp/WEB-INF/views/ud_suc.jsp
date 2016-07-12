<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>update</title>
    <style type="text/css">
	p {text-align: right; text-align: bottom; margin-top:100px; }
    </style>
  </head>

	<body>
		<h1>更新成功しました！</h1>
		<form:form modelAttribute="Formmodel">
		<p><button name="list" >一覧画面へ</button></p>
		</form:form>

	</body>
</html>