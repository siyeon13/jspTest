package kr.or.ddit.user.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.db.MybatisUtil;
import kr.or.ddit.user.model.EmpVo;

public class EmpService implements EmpServiceI{

	@Override
	public List<EmpVo> selectAllEmp() {
		SqlSession sqlSession = MybatisUtil.getSqlSession();

		List<EmpVo> empList = sqlSession.selectList("emp.selectAllEmp");

		sqlSession.close();

		return empList;
	}

}
