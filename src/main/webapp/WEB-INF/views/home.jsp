<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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

 div {margin-left:310px;

    }
    </style>
  </head>
<body>
<h1>

	ログイン画面
</h1>
<form:form modelAttribute="Formmodel">
<P>   ID:<input type="text" name="login_id" placeholder="ここにIDを入力してください"> </P>
<div>   パスワード:<input type="password" name="login_pass" placeholder="ここにパスワードを入力してください"> </div>
<P>   <input type="submit" name="home" value="ログイン"> </P>
</form:form>
</body>
</html>