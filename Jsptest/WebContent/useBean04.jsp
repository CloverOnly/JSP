<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--useBean 빈객체안의 맴버. --%>
<jsp:useBean id="person" class="webtest.person" scope="request" <%--scope를 안넣으면 이 안에서만 사용가능 --%> />
<p>아이디: <%=person.getId() %></p>
<p>이 름: <%=person.getName() %></p>
<%
	person.setId(20230824);
	person.setName("이영진");
%>
<jsp:include page="useBean03.jsp" />
</body>
</html>
