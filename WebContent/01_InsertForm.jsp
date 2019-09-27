<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>멤버 테이블에 레코드 추가</h2>
<form action="01_insertProc.jsp" method="post">
	ID: <input type="text" name="id"><br>
	PW: <input type="password" name="passwd"><br>
	Name : <input type="text" name="name"><br>
	<input type="submit" value="회원가입"><br>
</form>
</body>
</html>