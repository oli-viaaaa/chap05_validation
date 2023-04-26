<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<h3> 중첩 if문 </h3>
	
	<c:if test="${not empty param.id}">
		아이디 : <c:out value="${param.id}"/>
	</c:if>
	<br>
	
	<c:if test="${not empty param.pwd}">
		비밀번호 : <c:out value="${param.pwd}"/>
	</c:if>
	<br>
	
	<c:if test="${not empty param.name}">
		이름 : <c:out value="${param.name}"/>
	</c:if>
	<br>
	
	<c:if test="${not empty param.phone}">
		연락처 : <c:out value="${param.phone}"/>
	</c:if>
	<br>
	
	<c:if test="${not empty param.email}">
		이메일 : <c:out value="${param.email}"/>
	</c:if>
	<br>

</body>
</html>