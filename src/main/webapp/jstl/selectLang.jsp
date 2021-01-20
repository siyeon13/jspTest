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
<script>
	$(function(){
		$("select").on("change", function(){
			$("form").submit();
		})
		$("select").val("${param.lang }"); // 	==> $("select").val("en");
		
	}) 

</script>
</head>
<body>

<%-- 잘못된 표현 
<c:if test="${param.lang}=='ja' " --> x 
<c:if test="${param.lang=='ja' } " --> x 
 --%>

param : [${param.lang }]
	<form action="${cp}/jstl/selectLang.jsp">
<%-- 	<select id="sel" name="lang" onchange="">
		<option value="ko" <c:if test="${param.lang=='ko' }">selected</c:if>> 한국어</option>
		<option value="en" <c:if test="${param.lang=='en' }">selected</c:if> >english</option>
		<option value="ja" <c:if test="${param.lang=='ja' }">selected</c:if>  >日本語</option>
		<option value="etc" <c:if test="${param.lang=='etc' }">selected</c:if>>기타</option>
	</select>
	 --%>
	<select id="sel" name="lang" onchange="">
		<option value="ko" > 한국어</option>
		<option value="en"  >english</option>
		<option value="ja"   >日本語</option>
		<option value="etc" >기타</option>
	</select>
	
	
	
	<!-- <input type="submit" value="전송"/> -->
	</form>
	
	<br><br>
	<%-- select box로 설정한 언어로 GREETING, LANG 값을 표현  
		 select box는 사용자가 설정한 언어 값으로 선택이 되어있게 설정 --%>
	<fmt:setLocale value="${param.lang }"/>
	<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="LANG"/> <br>
	<fmt:message key="GREETING" > <br>
		<fmt:param value="brown" />
		</fmt:message> <br>
	</fmt:bundle>
	
	
	
	
</body>
</html>