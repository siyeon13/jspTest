<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp에 미리 선언되어 있는 내장객체가 있기 떄문에 request를 선언하지 않았는데도 사용할 수 있다 -->
<% %>
request.getContentType() : <%= request.getContentType() %><hr>
request.getMethod() : <%=	request.getMethod() %><hr>
request.getRequestURI() : <%=	request.getRequestURI() %><hr>
request.getContextPath() : <%=	request.getContextPath() %><hr>
request.getServerPort() : <%=	request.getServerPort() %><hr>
</body>
</html>