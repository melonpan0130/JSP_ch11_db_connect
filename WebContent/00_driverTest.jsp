<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JDBC 드라이버 테스트</h2>

<%
	Connection conn = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/mirim";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver"); // 드라이버 불러옴
		conn = DriverManager.getConnection(url, user, password);
		out.println("연결 성공");
	}
	catch(Exception e) {
		out.println("연결 실패");
		e.printStackTrace();
	}
%>

</body>
</html>