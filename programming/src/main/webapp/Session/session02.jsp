<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 설정 시간이 있어 설정 시간이 지나면 null값으로 표시된다. 
getAttribute로 값을 불러온다.
-->
<%
	String user_id = (String)session.getAttribute("userID");
	String user_pw = (String)session.getAttribute("userPW");
	
	out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>");
	out.println("설정된 세션의 속성 값 [2] : " + user_pw);
	
%>

</body>
</html>