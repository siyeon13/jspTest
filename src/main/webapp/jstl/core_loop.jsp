<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

	<%--
		for(1.초기화; 2.조건식; 3.증감식){
			4.반복할 문장
		}
	1-2-3-4-2-3-4-2-3-4......

	begin : 시작 인덱스 값
	end : 종료 인텍스 값
	step : 증감 값(default 1) 
	var : 인덱스 변수 or 향상된 for문에서 사용될 경우 collection 객체에서 꺼낸 값 설정
	varStatus : 루프변수
		index - 현재 인덱스 값
		count - 루프 실행 횟수
		begin, end - 루프의 begin, end 값
		 
	 --%>
<h3>일반 for 문형태</h3>
	<c:forEach begin="0" end="10" var="i" varStatus="loop" >
		${i} : 반복시킬 문장  ${loop.index } / ${loop.count }<br>
	</c:forEach>

<hr>
<h3>향상된 for 문형태</h3>
<%
		// 반복시킬 데이터 준비
		List<String> rangers = new ArrayList<String>();
		rangers.add("brown");
		rangers.add("cony");
		rangers.add("sally");
		rangers.add("moon");
		rangers.add("jame");
		request.setAttribute("rangers", rangers);
		
		/* 
			for(String ranger : (List<String>request.getAttribute("rangers")) ){
				
			}
		
		<c:forEach items="${rangers}" var="ranger">
		</c:forEach>
		 */
		
%>

	<c:forEach items="${rangers }" var="ranger" varStatus="loop">
		${ranger } / ${loop.index }  / ${loop.count } <br>
	</c:forEach>

<hr>

<h3>map 타입객체 루프를 통해 담겨진 값 확인하기</h3>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("userid", "brown");
	map.put("usernm", "브라운");
	map.put("alias", "곰");
	request.setAttribute("ranger", map);	// el로 넣어줘야 함
	
	// map, list?
	// map : 순차적으로 접근이 아닌, 특정 키에 의해 원하는 값을 확인하고 싶을 때
	// list : 순차적으로 접근하고 싶을 때
	// for(String str : list) ==> 리스트에 담겨있는 모든값에 대해 처리
	// map에 담겨진 모든 값을 확인??
	
	for(String key : map.keySet()){
		map.get(key);
			}
	// map 에 담겨져 있는 것들도 반복문을 통해 추출		
%>
	
	
	<c:forEach items="${ranger }" var="entry">
		${entry.key } / ${entry.value } <br>
	</c:forEach>
	
	
	<hr>
	<h3>url 작성</h3>
	<a href="<c:url value="/registUser"/>">사용자 등록</a> <br>
	
	<a href="${pageContext.request.contextPath }/registUser">사용자 등록</a> <br>
	<a href="${cp }/registUser">사용자 등록</a> <br>
	
	var 속성을 적용하지 않은경우 : 태그를 작성한 곳에 출력	<c:url value="/registUser"></c:url>  <br>
	var 속성을 적용한 경우 : var 속성으로 저장만 된다(el을 통해 활용) <c:url value="/registUser" var="url"></c:url>  
	${url }
	<!-- var="url"  저장 -->
</body>
</html>
























