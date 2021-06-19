<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 화면</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>secu error</h2>
	<c:forEach items="${result }" var="list">
		<c:out value="${list.bid }"></c:out>
		<c:out value="${list.title }"></c:out>
		<c:out value="${list.content }"></c:out>
		<c:out value="${list.reg_date }"></c:out>
		<c:out value="${list.likeit }"></c:out>
	</c:forEach>
</body>
</html>