<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<title>greenpage</title>
<STYLE type="text/css">
#blook3{
 height: 80px;
 border-bottom: 5px solid #FF0461;
 text-align: center;
 background-color: #CCFFCC;
}
#blook4{
 background-color: #99FFCC;
 text-align: center;
 height: 600px;
}
#blook5{
}
h2{
 margin-top: 0;
 margin-left: 0;
 margin-right: 0;
 margin-bottom: 0;
  position: relative;
  top: 28px;
}
ul{
 margin-top: 0;
 margin-left: 0;
 margin-right: 0;
 margin-bottom: 0;
}
body{
 border: 5px solid #FF0461;
 margin-top: 0;
 margin-left: 0;
 margin-right: 0;
 margin-bottom: 0;
}
#button1{
 position: relative;
  top: 20px;
}
#button2{
 position: relative;
  top: 15px;
}
</STYLE>

</head>

<body>
		<div id="blook5">
			<div id="blook3">
				<div id="Menu">
					<h2>Menu</h2>
				</div>
			</div>
			<div id="blook4">
				<div id="button1">
					<form action="/system/Register" target="toppage2" method="POST">
						<input type=submit value="発注登録">
					</form>
				</div>
				<br>
			</div>
		</div>
</body>
</html>