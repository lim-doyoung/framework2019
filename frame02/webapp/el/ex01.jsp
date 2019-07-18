<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 표현식</h1>
	<table border="1">
		<tr>
			<th>출력</th>
			<th>Java</th>
			<th>El</th>
		</tr>
		<tr>
			<td>String</td>
			<td><%="abcd" %></td>
			<td>${"ABCD"}</td>
		</tr>
		<tr>
			<td>String</td>
			<td><%out.print("ABCD"); %></td>
			<td>${'ABCD'}</td>
		</tr>
		<tr>	
			<td>숫자(정수)</td>
			<td><%=1234 %></td>
			<td>${1234+1 }</td>
		</tr>
		<tr>	
			<td>숫자(정수-나눗셈)</td>
			<td><%=5/2 %></td>
<%-- 			<td>${5 div 2 }</td> --%>
		</tr>
		<tr>	
			<td>실수(연산)</td>
			<td><%=6/4 -6%4 %></td>
			<td>${6/4 }</td>
		</tr>
		<tr>	
			<td>실수(연산)</td>
			<td><%=6.0000000000000000001*2 %></td>
			<td>${6.0000000000000000001*2 }</td>
		</tr>
		<tr>
			<td>true/false</td>
			<td><%=3==2 %></td>
			<td>${3==2 }</td>
		</tr>
		<tr>
			<td>true/false(==)</td>
			<td><%=3==2 %></td>
			<td>${3 eq 2 }</td>
		</tr>
		<tr>
			<td>true/false(>)</td>
			<td><%=3>2 %></td>
			<td>${3 gt 2 }</td>
		</tr>
		<tr>
			<td>true/false(<)</td>
			<td><%=3<2 %></td>
			<td>${3 lt 2 }</td>
		</tr>
		<tr>
			<td>true/false(>=)</td>
			<td><%=3>=2 %></td>
			<td>${3 ge 2 }</td>
		</tr>
		<tr>
			<td>true/false(<=)</td>
			<td><%=3<=2 %></td>
			<td>${3 le 2 }</td>
		</tr>
		<tr>
			<td>null</td>
			<td><%
				String msg=null;
			out.println(msg);
			%></td>
			<td>${msg }</td>
		</tr>
	</table>
</body>
</html>