<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>제어문-반목문</h1>
<%-- 	<c:forEach begin="1" end="10" step="3" var="idx" varStatus="status">	
		<p>${idx }출력${status.index }</p>
	</c:forEach> --%>
	<hr/>
	
	<%
		ArrayList<String> list=new ArrayList<String>();
		list.add("item1");
		list.add("item2");
		list.add("item3");
		list.add("item4");
		list.add("item5");
		
		HashSet<String> hset=new HashSet<String>();
		hset.add("set1");
		hset.add("set2");
		hset.add("set3");
		hset.add("set4");
		hset.add("set5");
		
		HashMap<String,String> hmap=new HashMap<String,String>();
		hmap.put("key1","value1");
		hmap.put("key2","value2");
		hmap.put("key3","value3");
		hmap.put("key4","value4");
		
		
		pageContext.setAttribute("alist", hmap);
	%>
	<ul>
		<c:forEach items="${alist }" var="msg" varStatus="status">
		<li>${status.index}-${msg.value }</li>
		</c:forEach>
	</ul>
</body>
</html>