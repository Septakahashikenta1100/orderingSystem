<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login</title>
    <style type="text/css">
<%@ include file="../css/style.css" %>
    </style>
  </head>

	<body>
		<h1 class="login_fail">ログイン出来ませんでした。</h1>
		<h2 class="login_fail">ID・パスワードを見直すか、空欄を埋めて下さい。</h2>
		<form:form modelAttribute="Formmodel">
			<div>
				<p class="login_fail"><input type="button" name="home"onclick="location.href='http://localhost:8080/system/home'"value="ログイン画面へ"></p>
			</div>
		</form:form>
	</body>
</html>