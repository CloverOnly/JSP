<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 삭제하기 방법 1 -->

	<h4>====세션을 삭제하기 전=====</h4>
<%
	/* (String)는 강제 형 변환 session은 내장객체 */
	String user_id = (String)session.getAttribute("userID");
	String user_pw = (String)session.getAttribute("userPW");
	out.println("설정된 세션 이름 userID :" + user_id + "<br>");
	out.println("설정된 세션 값 userPW :" + user_pw + "<br>");
	
	/* userID의 속성을 삭제 */
	session.removeAttribute("userID");
%>
	<h4>====세션을 삭제한 후====</h4>
<%
	user_id=(String)session.getAttribute("userID");
	user_pw=(String)session.getAttribute("userPW");
	out.println("설정된 세션 이름 userID :" + user_id + "<br>");
	out.println("설정된 세션 값 userPW :" + user_pw + "<br>");
%>
</body>
</html>