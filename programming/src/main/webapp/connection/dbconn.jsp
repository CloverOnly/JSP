<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/jsbookdb";
	String user = "root";
	String password ="1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	//다 합해서 connection객체에 넣어준다.
	conn=DriverManager.getConnection(url, user, password);
 %>	
<!--  실행처리 다 되고 다시 부른곳으로 돌아간다. -->
</body>
</html>