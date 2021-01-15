package kr.or.ddit.user.repository;

import java.util.List;

import kr.or.ddit.common.model.PageVo;
import kr.or.ddit.user.model.EmpVo;
import kr.or.ddit.user.model.UserVo;

public interface EmpDaoI {
	
	// 전체 사용자 정보 조회
	/*	SELECT *
	 *	FROM users; 
	 */
	// 전체 사용자 정보 조회
	List<EmpVo> selectAllEmp();
	
		
	
	
}
