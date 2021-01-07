package kr.or.ddit.servlet.scope;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/mulcalculation")
public class MulCalculation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(MulCalculation.class);

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/mulCalculation.jsp").forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("param1"));
		int num2 = Integer.parseInt(request.getParameter("param2"));
		
		logger.debug("첫번째 숫자 : " + request.getParameter("param1"));
		logger.debug("두번째 숫자 : " + request.getParameter("param2"));
		
		int res = num1 * num2;
		
		logger.debug("합 : " + res);
		HttpSession session = request.getSession();
		session.setAttribute("mulResult", res);
		
		request.getRequestDispatcher("/jsp/mulResult.jsp").forward(request, response);

	}

}
