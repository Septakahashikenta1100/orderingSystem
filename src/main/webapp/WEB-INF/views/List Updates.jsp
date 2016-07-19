 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page session="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

 <html>

 	<head>

      <style>
		<%@ include file="../css/home.css" %>
</style>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>list</title>





   </head>
  </head>

  	<body  bgcolor="#FFD5EC">
  		<h1>完了一覧</h1>

 		<form:form modelAttribute="Formmodel">
 			<c:forEach items="${db}"  var="obj">
 				<c:if test="${obj.progress > 99 && obj.progress < 120}">
 			  		<br><input type ="radio" name = "up" value="${obj.orderid}" checked>
 			  		<c:out value="${obj.name}"/>
 			  		<c:out value="${obj.modelnumber}"/>
 			  		<c:out value="${obj.tel}"/>
 					[<c:out value="${obj.progress}"/>]%
  				</c:if>
  				</c:forEach>
  			<div>
 				<p class="list"><input type="submit" name="Dispatch" value="詳細画面"></p>

  			</div>
  		</form:form>
  	</body>
 </html>