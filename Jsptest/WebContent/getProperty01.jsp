<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--class 를 만들어 id에 값을 넣어준다. --%>
<jsp:useBean id = "person" class="webtest.person" scope="request" />
<p>아이디 : <jsp:getProperty name="person" property="id"/></p>
<p>이 름 : <jsp:getProperty name="person" property="name"/></p>
</body>
</html>
