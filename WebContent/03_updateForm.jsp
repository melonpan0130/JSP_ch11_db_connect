<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Member 테이블의 레코드 수정</h2>
<form action="03_updateProc.jsp" method="post">
	ID: <input type="text" name="id"><br>
	PW: <input type="password" name="passwd"><br>
	Changed Name : <input type="text" name="name"><br>
	<input type="submit" value="수정"><br>
</form>
</body>
</html>