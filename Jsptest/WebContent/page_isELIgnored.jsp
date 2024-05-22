<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	${requestScope.RequestAttribute}
</body>
</html>

<%--JSP 페이지에서 EL을 사용하려면 isELIgnored 속성을 false로 설정하거나, 기본적으로 EL을 사용하도록 웹 애플리케이션을 설정해야 한다 --%>