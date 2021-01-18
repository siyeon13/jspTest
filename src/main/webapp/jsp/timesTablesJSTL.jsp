<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	표현식, 스크립틀릿을 EL, JSTL로 변경

	<table style="color : hotpink" border="1">
	
	
	<c:forEach begin="1" end="9" var="i" varStatus="loop" >
		<tr>
			<c:forEach begin="2" end="9" var="j" varStatus="loop" >
				<td>
				${j } * ${i } = ${(j* i) }
				</td>
			</c:forEach>
			</tr>
	</c:forEach>
	
	


	<%-- java 코드에 <% %> --%>
	
</body>
</html>