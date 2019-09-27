<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Member 테이블의 레코드 삭제</h3>
<form action="04_deleteProc.jsp" method="post">
	ID: <input type="text" name="id"><br>
	PW: <input type="password" name="passwd"><br>
	<input type="submit" value="삭제">
</form>
</body>
</html>