<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int su = 0;
	
	try {
		String url = "jdbc:mysql://localhost:3306/mirim";
		String user = "test";
		String pw = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pw);
		
		String sql = "INSERT INTO member VALUES(?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setTimestamp(4, register);
		
		su = pstmt.executeUpdate();
		out.println("레코드 추가 성공");
	} catch(Exception e) {
		e.printStackTrace();
		out.println("레코드 추가 실패");
	} finally {
		if(pstmt != null)
			try{
				pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		if(conn != null)
			try{
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
	}
%>
<br>
<%= su %>개 레코드 추가
</body>
</html>