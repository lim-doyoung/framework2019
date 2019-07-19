<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="msgs" value="java,web,db,spring"></c:set>
	<c:forTokens items="${msgs }" delims="," var="msg">
		<p>${msg }</p>
	</c:forTokens>
	
	<p>start</p>
	<c:import url="ex03.jsp"></c:import>
	<p>end</p>
	<c:url value="target.jsp" var="target">
		<c:param name="id" value="admin"></c:param>
	</c:url>
	
	<a href="${target }">link</a><!-- param 전송 -->
	
	<div><!-- div로 숨기고 원하는 값만 파싱해서 사용가능 -->
	<c:import url="https://www.naver.com"></c:import>
	</div>
</body>
</html>