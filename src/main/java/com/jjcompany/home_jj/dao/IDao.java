package com.jjcompany.home_jj.dao;

public interface IDao {
	
	//회원관리
	public int joinDao(String mid, String mpw, String mname, String memail);
	public int checkIdDao(String mid); // 가입하려는 아이디의 존재여부 체크
	

}
