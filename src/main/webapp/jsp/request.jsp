<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request.getContentType() : <%= request.getContentType() %><hr>
request.getMethod() : <%=	request.getMethod() %><hr>
request.getRequestURI() : <%=	request.getRequestURI() %><hr>
request.getContextPath() : <%=	request.getContextPath() %><hr>
request.getServerPort() : <%=	request.getServerPort() %><hr>
</body>
</html>