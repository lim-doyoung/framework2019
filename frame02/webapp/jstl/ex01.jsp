<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN" "http://java.sun.com/dtd/web-app_2_3.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl()JavaServer pages Standard Tag Library</h1>
	<ul>
		<li><c:out value="1234"></c:out></li>
		<li><c:out value="java"></c:out></li>
 		<li><c:out value="${null }">null일경우 텍스트 출력</c:out></li>
	</ul>
	<c:set var="msg" value="abcd" scope="session"></c:set>
	<ul>
		<li>${pageScope.msg }</li>
		<li>${requestScope.Scope.msg }</li>
		<li>${sessionScope.msg }</li>
		<li>${applicationScope.msg }</li>
 		<li><c:out value="${msg }"></c:out>
		
	</ul>
	<jsp:useBean id="bean" class="com.bit.entity.javaBean" scope="page"></jsp:useBean>
	<c:set target="${bean }" property="su1" value="1223"></c:set>
	<c:set target="${bean }" property="su2" value="3.14"></c:set>
	<c:set target="${bean }" property="ch" value="@"></c:set>
	<c:set target="${bean }" property="nalja" value="<%=new java.util.Date() %>"></c:set>
	
	<ul>
		<li>${bean.su1 }</li>
		<li>${bean.su2 }</li>
		<li>${bean.ch }</li>
		<li>${bean.nalja }</li>
	</ul>
</body>
</html>