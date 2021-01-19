package kr.or.ddit.user.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.realm.LockOutRealm;
import org.apache.tomcat.util.buf.UDecoder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceI;

@WebServlet("/registUser")
public class RegistUser extends HttpServlet {
	private UserServiceI userService = new UserService();
	private static final Logger logger = LoggerFactory.getLogger(RegistUser.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("user/registUser.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// servlet의 doPost 메소드 마다 실행 필요 => Filter
		//req.setCharacterEncoding("utf-8");
		
		String userid = req.getParameter("userId");
		String usernm = req.getParameter("usernm");
		String pass = req.getParameter("pass");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		Date reg_dt = null;
		try {
			reg_dt = sdf.parse(req.getParameter("regdt"));

		} catch (Exception e) {
			// TODO: handle exception
		}
		String alias = req.getParameter("alias");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		String zipcode = req.getParameter("zipcode");
		
		UserVo userVo = new UserVo(userid, usernm, pass, reg_dt, alias, addr1, addr2, zipcode);
		System.out.println(userid);
		System.out.println(usernm);
		System.out.println(pass);
		System.out.println(reg_dt);
		System.out.println(alias);
		System.out.println(addr1);
		System.out.println(addr2);
		System.out.println(zipcode);
		int update = 0;

		try {
			update = userService.insertUser(userVo);

		} catch (Exception e) {
			update = 0;
		}
		System.out.println(update);

		if (update == 1) {
			resp.sendRedirect(req.getContextPath() + "/pagingUser");
		} else {
			doGet(req, resp);

		}

	}
}