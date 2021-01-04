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

@WebServlet("/Calculation")
public class SumCalculation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(SumCalculation.class);

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/sum.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num1 = Integer.parseInt(request.getParameter("start"));
		int num2 = Integer.parseInt(request.getParameter("end"));
		
		logger.debug("start : " + request.getParameter("start"));
		logger.debug("end : " + request.getParameter("end"));
		
		int res = 0;
		for(int i=num1; i<=num2; i++) {
			res += i;
			
		}
		logger.debug("합 : "+res );	
		
		HttpSession session = request.getSession();
		session.setAttribute("sumResult", res);
		
		request.getRequestDispatcher("/jsp/sumResult.jsp").forward(request, response);

		
		
	}

}
