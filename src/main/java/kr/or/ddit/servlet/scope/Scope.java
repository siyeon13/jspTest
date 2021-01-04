package kr.or.ddit.servlet.scope;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sc")
public class Scope extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/scope.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Scope.java의 doPost에서는 요청 파라미터 중 scope 파라미터를 확인하여
		String scopeParameter = request.getParameter("scope");
		
		//속성 저장 : 스코프객체.setAttribute("속성명", "속성값"), 반환타입 : void
		//request, session, application scope에 다음과 같이 속성을 저장
		//request : 속성명=request, 속성값=scope파라미터값 + "_request"
		request.setAttribute("request", scopeParameter + "_request");
		
//		session : 속성명=session, 속성값=scope파라미터값 + "_session"
		HttpSession session = request.getSession();
		session.setAttribute("session", scopeParameter + "_session");
		
		// request.getSession()..setAttribute("session", scopeParameter + "_session");
		
//		application : 속성명=application, 속성값=scope파라미터값 + "_application"
		ServletContext application = getServletContext();
		application.setAttribute("application", scopeParameter + "_application");
	
		//webapp/jsp/scopeResult.jsp로 forward
		request.getRequestDispatcher("/jsp/scopeResult.jsp").forward(request, response);
		
		
	}

}
