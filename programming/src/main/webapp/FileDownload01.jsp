<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- taglib prefix 의 c가 밑에 c:set으로 시작의 c다.
그리고 그 c:set시작 부분을 쓰려면 isELIgnores는 false여야 한다.--%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%--param값을 변수 요소인 file에 넣어준다. --%>
<c:set var="file1" value="${param.param1}" />
<c:set var="file2" value="${param.param2}" />

<title>Insert title here</title>
</head>
<body>
<table align="center" border="1" >

<tr>
	<%-- 테이블 1행을 보여준다. file은 이미지명이 출력된다.--%>
	<td>파라미터 1: <c:out value = "${file1 }" /><br></td>
	<td>파라미터 2: <c:out value = "${file2 }" /><br></td>	
</tr>
<td>
<%--c:if문을 사용해 정의된 변수명을 가지고 비교 --%>
<c:if test="${not empty file1 }">
<%--다운 받을 이미지 파일 보이는곳 --%>
<img src = "${contextPath}/download.do?fileName=${file1}" width=300 height=300 /><br>
</c:if>

<%--이미지 파일을 내려받는곳 --%>
파일 내려받기:
<a href="${contextPath}/download.do?fileName=${file1}">파일 내려받기</a><br>
<br>
</td>

<td>
<c:if test="${not empty file2 }">
<img src = "${contextPath}/download.do?fileName=${file2}" width=300 height=300 /><br>
</c:if>
파일 내려받기:
<a href="${contextPath}/download.do?fileName=${file2}">파일 내려받기</a><br>
<br>
</td>


</table>
</body>
</html>