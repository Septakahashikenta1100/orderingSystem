<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login</title>
    <style type="text/css">
    <!--
    h1 {margin-top:50px; text-align: center; }
    -->
    p {text-align: center; margin-top:100px; }

    </style>
  </head>

	<body>
		<h1>ログインしました。</h1>
		<form:form modelAttribute="Formmodel">
			<div>
				<p><input type="submit" name="login" value="トップページ"></p>
			</div>
		</form:form>
	</body>
</html>