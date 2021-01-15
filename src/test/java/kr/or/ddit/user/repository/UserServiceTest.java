package kr.or.ddit.user.repository;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import kr.or.ddit.common.model.PageVo;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceI;

public class UserServiceTest {
	private UserServiceI userService;
	
	@Before
	public void setup() {
		userService = new UserService();
		// 테스트에서 사용할 신규 사용자 추가
		UserVo userVo = new UserVo("testUser", "테스트사용자", "testUserPass", new Date(), "대덕", "대전 중구 중앙로 76", "4층",
				"34940");

		userService.deleteUser("testUser");
		userService.insertUser(userVo);

		// 신규 입력 테스트를 위해 테스트 과정에서 입력된 데이터를 삭제
		userService.deleteUser("ddit_n");
		
		
		
	}
	
	@Test
	public void selectAllUserTest() {

		/***Given***/
		UserVo userVo = new UserVo("testUser", "테스트사용자", "testUserPass", new Date(), "대덕", "대전 중구 중앙로 76", "4층",
				"34940");
	
		/***When***/
		List<UserVo> userList = userService.selectAllUser();
		
		/***Then***/
		assertEquals(16, userList.size());
		//데이터 건수를 이용해서 일치하는지 확인
	}
	
	// 사용자 아이디를 이용하여 특정 사용자 정보 조회
	// public / 반환타입 void 
	@Test
	public void selectUserTest() {
		
		/***Given***/
		UserServiceI userService = new UserService();
		String userid = "brown";

		/***When***/
		UserVo user = userService.selectUser(userid);
		
		
		/***Then***/
		// 사용자가 존재하기 때문에 null이면 안된다
		assertNotNull(user);
		assertEquals("브라운", user.getUsernm());
		
	}
	
	// 사용자 아이디가 존재하지 않을 때, 특정 사용자 조회
	@Test
	public void selectUserNotExsistTest() {
		/***Given***/
		UserServiceI userService = new UserService();
		String userid = "browndfdfdse";
		//id가 존재하지 않는 상황을 만들어줌

		/***When***/
		UserVo user = userService.selectUser(userid);
		
		
		/***Then***/
		// 사용자가 존재하기 때문에 null이면 안된다
		assertNull(user);

	}
	
	// 테스트 코드를 먼저 작성하면 좋은점
	// 설계를 할 수 있다
	
	// 페이징처리 
	@Test
	public void selectPagingUserTest() {
		
		/***Given***/
		UserServiceI userService = new UserService();
		PageVo pagevo = new PageVo(2, 5);

		/***When***/
		List<UserVo> userList = (List<UserVo>) userService.selectPagingUser(pagevo);
		
		
		/***Then***/
		//데이터 건수를 이용해서 일치하는지 확인
		assertEquals(5, userList.size());
		
	}
	
	@Test
	public void modifyUserCnt() {
		
		/***Given***/
		// userid, usernm, pass, reg_dt, alias, addr1, addr2, zipcode
		UserVo userVo = new UserVo("ddit",	"대덕인재",	"dditpass", new Date(), "개발원_m", "대전시 중구 중앙로 76", "4층 대덕인재개발원", "34940");
		
		/***When***/
		int updateCnt = userService.modifyUser(userVo);
		
		/***Then***/
		assertEquals(1, updateCnt);
		
	}
	
	
}
