package kr.or.ddit.cookie;

import static org.junit.Assert.*;

import org.junit.Test;

public class CookieUtilTest {

	@Test
	public void getCookieValuetest() {
		/***Given***/
		String cookieStr = "userid=brown; rememberme=Y; test=testcookie";
		String cookieName = "rememberme";

		/***When***/
		
		String cookieValue = CookieUtil.getCookieValue(cookieStr, cookieName);

		/***Then***/
		assertEquals("Y", cookieValue);
	}
	
	@Test
	public void getCookieValue2test() {
		/***Given***/
		String cookieStr = "userid=brown; rememberme=Y; test=testcookie";
		String cookieName = "userid";
		
		/***When***/
		
		String cookieValue = CookieUtil.getCookieValue(cookieStr, cookieName);
		
		/***Then***/
		assertEquals("brown", cookieValue);
	}
	
	@Test
	public void getCookieValue3test() {
		/***Given***/
		String cookieStr = "userid=brown; rememberme=Y; test=testcookie";
		String cookieName = "notexist";
		
		/***When***/
		
		String cookieValue = CookieUtil.getCookieValue(cookieStr, cookieName);
		
		/***Then***/
		assertEquals("", cookieValue);
		
		
		
	}
	
	

}
