package kr.or.ddit.user.repository;

import java.util.List;

import kr.or.ddit.common.model.PageVo;
import kr.or.ddit.user.model.UserVo;

public interface UserDaoI {
	
	// 전체 사용자 정보 조회
	/*	SELECT *
	 *	FROM users; 
	 */
	// 전체 사용자 정보 조회
	List<UserVo> selectAllUser();
	
	// userid에 해당하는 사용자 한명의 정보 조회
	UserVo selectUser(String userid);

	// 페이징처리 조회
	List<UserVo> selectPagingUser(PageVo pagevo);		
	
	// 사용자 전체 수 조회
	int selectAllUserCnt();
	
	// 사용자 정보 수정
	// (update -> 수정된 행의 건수를 받는다)
	int modifyUser(UserVo userVo);
	
	// 사용자 추가 
	int insertUser(UserVo userVo);
	
	// 사용자 삭제
	int deleteUser(String userid);
}
