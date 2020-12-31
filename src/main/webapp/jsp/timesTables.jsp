<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="color : hotpink" border="1">
	
	
<% 	for(int i=1; i <= 9; i++) {  
		out.write("<tr>");	
	 			for(int j=2; j<=9; j++) {  
	 				out.write("<td>");
	 				out.write(j + "*" + i + " = " + i*j);    
	 				out.write("</td>");
		} 
		out.write("</tr>");		
		} %>
	

	<%-- java 코드에 <% %> --%>
	
</body>
</html>