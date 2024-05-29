<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--post방식에 경로는 FIleDownload.jsp 가져다 양식으로씀--%>
<form method="post" action="FileDownload01.jsp">
	
	<%--name이 param1이므로 FileDownload01.jsp에서 <c:set var="file1" value="${param.param1}" />
		을 통해 file1이 param1이 된다. 
		그럼 결국 file1은 이미지 파일이 된다.--%>
	<input type=hidden name="param1" value="file1.jpg" /><br>
	<input type=hidden name="param2" value="file2.jpg" /><br>
	
	<%--버튼 생성--%>
	<input type="submit" value="이미지 다운로드">
</form>

</body>
</html>