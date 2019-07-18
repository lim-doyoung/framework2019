<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String[] strs={"ab","abc","abcd","abcde"};

	ArrayList<String> alist=new ArrayList<String>();
	alist.add("AB");
	alist.add("ABC");
	alist.add("ABCD");
	alist.add("ABCDE");
	
	HashSet<String> hset=new HashSet<String>();
	hset.add("a");
	hset.add("ab");
	hset.add("abc");
	hset.add("abcd");
	
	HashMap<String,String> hmap=new HashMap<String,String>();
	hmap.put("key1","val1");
	hmap.put("key2","val2");
	hmap.put("key3","val3");
	hmap.put("key4","val4");
	
	com.bit.entity.javaBean bean=null;
	bean=new com.bit.entity.javaBean();
	
	bean.setSu1(1234);
	bean.setSu2(3.14);
	bean.setCh('a');
	bean.setBoo(true);
	bean.setStr("bean object");
	bean.setNalja(new java.util.Date());
	
	pageContext.setAttribute("bean", bean);
	pageContext.setAttribute("strs", strs);
	pageContext.setAttribute("list", hset);
	pageContext.setAttribute("map", hmap);
%>
<body>
	<h1>자료 표현</h1>
	<ul>
		<li>${bean.su1 }</li>
		<li><%=bean.getStr() %></li>
		<li>${bean.su2 }</li>
		<li>${bean.ch }</li>
		<li>${bean.boo }</li>
		<li>${bean.str }</li>
		<li>${bean.nalja }</li>
	</ul>
</body>
</html>