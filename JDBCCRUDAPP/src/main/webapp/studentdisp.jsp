<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor = "lightblue">
<center>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<c:set var = "result" value = "${requestScope.student }" />
	<c:choose>
		<c:when test="${result ne null }">
			<table border='1'>
				<tr>
					<th>ID</th>
					<td>${result.sid }</td>
				</tr>
				<tr>
					<th>NAME</th>
					<td>${result.sname }</td>
				</tr>
				<tr>
					<th>AGE</th>
					<td>${result.sage }</td>
				</tr>
				<tr>
					<th>ADDRESS</th>
					<td>${result.saddress } </td>
				</tr>
			</table>
		</c:when>
		<c:when test="${result eq null }">
		<h1 style = 'color:green; text-align: center;'> RECORD NOT AVAILABLE </h1>
		</c:when>
		
	</c:choose>
</center>	
	
</body>
</html>