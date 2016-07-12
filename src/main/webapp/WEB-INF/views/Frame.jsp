<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<title>タイトル</title>

</head>

  <frameset cols="28%,72%">
    <frame src=menu name="greenpage">
    <frame src=list name="orangepage">
  </frameset>
<frameset cols="28%,72%">
    <frame src=menu name="greenpage">
    <frame src=inquiry name="orangepage">
  </frameset>
  <frameset cols="28%,72%">
    <frame src=menu name="greenpage">
    <frame src=update name="orangepage">
  </frameset>
  <frameset cols="28%,72%">
    <frame src=menu name="greenpage">
    <frame src=up_fail name="orangepage">
  </frameset>
  <frameset cols="28%,72%">
    <frame src=menu name="greenpage">
    <frame src=ud_suc name="orangepage">
  </frameset>
</html>