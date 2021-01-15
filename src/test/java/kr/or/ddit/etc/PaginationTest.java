package kr.or.ddit.etc;

import static org.junit.Assert.*;

import org.junit.Test;

public class PaginationTest {

	@Test
	public void PaginationTest() {

		/***Given***/
		int userTotCnt = 16;
		int pageSize = 5;
		

		/***When***/
		int pagination =  (int) Math.ceil((double)userTotCnt/pageSize);
		
		/***Then***/
		assertEquals(4, pagination);
	}

}
