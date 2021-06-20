<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>게시판 목록 화면</title>
</head>
<body>
	<h1>게시판 리스트 </h1>
	<table border="1" width="70%">
		<thead>
			<tr>
				<td>게시물번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회</td>
				<td>좋아요</td>
			</tr>	
		</thead>
		<tbody>
			<tr>
				<c:forEach items="${result }" var="list">
					<td><c:out value="${list.bno }"></c:out></td>
					<td><c:out value="${list.title }"></c:out></td>
					<td><c:out value="${list.writer }"></c:out></td>
					<td><c:out value="${list.reg_date }"></c:out></td>
					<td><c:out value="${list.view_cnt }"></c:out></td>
					<td><c:out value="${list.likeit }"></c:out></td>
				</c:forEach>
			</tr>
		</tbody>
	</table>
	<button type="button" onclick="inserPage();">게시물 등록</button>
	
</body>
</html>