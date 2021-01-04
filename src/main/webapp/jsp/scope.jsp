<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/sc" method="post">
	<input type="text" name="scope" value="brown"/><br>
	<button type="submit" value="전송"></button>
	

</form>


</body>
</html> 