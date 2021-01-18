<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<ul class="nav nav-sidebar">
	<li class="active"><a href="#">Main <span class="sr-only">(current)</span></a></li>
	<li class="active"><a href="${pageContext.request.contextPath}/allUser">전체 사용자</a></li>
	<li class="active"><a href="${pageContext.request.contextPath}/pagingUser?page=1&pageSize=5">사용자 페이징 리스트</a></li>
<%-- 	<li class="active"><a href="${pageContext.request.contextPath}/pagingUser?page=1&pageSize=5">사용자 페이징 리스트</a></li>
 --%>	
	<%-- localhost/pagingUser?page=1&pageSize=5 로 요청시
	pagingUser.jsp에서 페이지에 해당하는 사용자 5명만 출력 되도록 개발
	(kr.or.ddit.user.controller.PagingUser.java, webapp/user/pagingUser.jsp)
	 --%>
	
	<%-- 
		/allUser 요청을 처리할 servlet(controller)
		kr.or.ddit.user.controller.Alluser
		doGet(){
			1. service 객체를 통해 전체 사용자 정보를 조회
			2. request객체에 userList라는 속성명으로 1번에서 조회한 데이터를 설정
			3. webapp/user/allUser.jsp로 응답을 생성하도록 forward
				allUser.jsp는 user.html 참고하여 생성
				header.jsp, left.jsp를 재활용 하여 생성
				
				user.html의 사용자 정보를 표현하는 테이블 태그의 tr 부분을
				request에 저장된 userList 속성 값으로 동적 생성하여
				화면에 출력
		}
	 --%>
</ul>