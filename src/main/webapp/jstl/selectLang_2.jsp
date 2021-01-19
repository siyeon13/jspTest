<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common_lib.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#sel{
	width : 140px;
}

</style>
</head>
<body>


	<select id="sel" name="sel" onchange="">
		<option value="ko" id="ko" <c:if test="${lang=='ko' }">selected</c:if>> 한국어</option>
		<option value="en" id="en" <c:if test="${lang=='en' }">selected</c:if> >english</option>
		<option value="ja" id="ja">日本語</option>
		<option>기타</option>
	</select>
	
	<!-- $("#sel option:selected").val(); -->
	<br><br>
	<%-- select box로 설정한 언어로 GREETING, LANG 값을 표현  
		 select box는 사용자가 설정한 언어 값으로 선택이 되어있게 설정 --%>
	<fmt:setLocale value="${lang }"/>
	<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="LANG"/> <br>
	<fmt:message key="GREETING" > <br>
		<fmt:param value="brown" />
		</fmt:message> <br>
	</fmt:bundle>
	
	
	
	
</body>
</html>