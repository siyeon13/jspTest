<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/mulcalculation" method="post">
		<label>첫번째 숫자</label><input type="text" name="param1"/><br>
		<label>두번째 숫자</label><input type="text" name="param2"/><br>
		<button type="submit" >click</button>
	</form>
</body>
</html>