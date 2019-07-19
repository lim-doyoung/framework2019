<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력 페이지</h1>
	<form action="insert.action">
		<div>
			<label for="sub">sub</label>
			 <input type="text" name="bean.sub" id="sub" />
		</div>
		
		<div>
			<label for="name">name</label>
			<input type="text" name="bean.name" id="name" />
		</div>
		
		<div>
			<label for=""></label>
			<textarea rows="5" cols="50" name="bean.content"></textarea>
		</div>
		
		<div>
			<button type="submit">입력</button>
		</div>
		
	</form>
</body>
</html>