<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login errer</title>
<link rel="stylesheet" type="text/css" href="resources/css/Login.css" />
</head>
<body>
	<h1>ログイン画面</h1>
	<form:form modelAttribute="FromModel" action="/system/">
		<P>
			ID:<input type="text" name="id" placeholder="ここにIDを入力してください" value="${id}">
		</P>
		<div>
			パスワード:<input type="password" name="password"
				placeholder="ここにパスワードを入力してください">
		</div>
		<P>
			<input type="submit" value="ログイン">
		</P>

		<h2>IDまたはパスワードが間違っています。</h2>
	</form:form>
</body>
