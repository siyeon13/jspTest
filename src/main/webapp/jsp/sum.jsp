<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/Calculation" method="post">
		<label>start</label><input type="text" name="start"/><br>
		<label>end</label><input type="text" name="end"/><br>
		<button type="submit" >click</button>
	</form>
</body>
</html>