<%@page import="java.sql.*"%>
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
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/mirim";
		String user = "test";
		String pw = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pw);
		
		String sql = "SELECT id, passwd FROM member where id = ?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");
			
			if(id.equals(rId) && passwd.equals(rPasswd)) {
				sql = "UPDATE member SET name = ? WHERE id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				out.println("성공적으로 레코드를 수정했습니다.");
			} else {
				out.println("비밀번호를 다시 한번 확인해 주세요");
			}
		} else {
			out.println("아이디를 다시 한번 확인해 주세요");
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs != null) try{ rs.close(); }catch(Exception e) { e.printStackTrace(); }
		if(pstmt != null) try{ pstmt.close(); }catch(Exception e) { e.printStackTrace(); }
		if(conn != null) try{ conn.close(); }catch(Exception e) { e.printStackTrace(); }
	}
%>

<meta http-equiv='refresh' content='1; url ="02_selectForm.jsp"'/>
</body>
</html>