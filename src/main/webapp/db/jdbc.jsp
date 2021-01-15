<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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

	<%
	// DB작업에 필요한 객체변수 선언
			Connection conn = null;
			Statement st = null;
			ResultSet rs = null;
			
			try {
				// 1. 드라이버 로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				// 2. DB 연결
				long startTime = System.currentTimeMillis();				
				for(int i = 0; i < 30; i++){
					conn = DriverManager.getConnection(
							"jdbc:oracle:thin:@localhost:1521:xe",
							"pc21",
							"java");
	
					conn.close();
				}
				
				long endTime = System.currentTimeMillis();
				out.print("duration : " +  (endTime - startTime));  
				
			} catch (SQLException e) {
				// TODO: handle exception
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				// 6. 사용했던 자원 반납하기
				if(rs!=null) try { rs.close();	}catch (Exception e) {}
				if(st!=null) try { rs.close();	}catch (Exception e) {}
				if(conn!=null) try { rs.close();	}catch (Exception e) {}
			}	
	
	%>

</body>
</html>