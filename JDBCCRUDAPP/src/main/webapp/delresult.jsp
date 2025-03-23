<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<c:set var = "result" value = "${requestScope.delete }" />
		<c:choose>
			<c:when test="${result eq 'success'}">
			<h1 style = 'color:green; text-align: center;'> DELETE OPERATION SUCCESSFUL</h1>
			</c:when>
			
			<c:when test="${result eq 'failure' }">
			<h1 style = 'color:green; text-align: center;'> DELETE OPERATION FAILED</h1>
			</c:when>
			
			<c:when test="${result eq 'notfound' }">
			<h1 style = 'color:green; text-align: center;'> RECORD NOT FOUND</h1>
			</c:when>
		</c:choose>

</body>
</html>