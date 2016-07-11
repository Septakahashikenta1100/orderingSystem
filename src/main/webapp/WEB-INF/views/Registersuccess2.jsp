<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録完了画面</title>
</head>
<body>
<h1>ご登録ありがとうございました。</h1>
<form:form modelAttribute="FromModel" action="/system/toppage2_re">
<input type ="submit" value="進捗確認">
</form:form>
<h3>${hidden1} ${hidden2} ${hidden3} ${hidden4} ${hidden5} ${hidden6} ${hidden7} ${hidden8} ${hidden9} ${hidden10}
${hidden11} ${hidden12} ${hidden13} ${hidden14} ${hidden15} ${hidden16} ${hidden17}</h3>
</body>
</html>