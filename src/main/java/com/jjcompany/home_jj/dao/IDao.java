package com.jjcompany.home_jj.dao;

import com.jjcompany.home_jj.dto.MemberDto;

public interface IDao {
	
	//회원관리
	public int joinDao(String mid, String mpw, String mname, String memail);
	public int checkIdDao(String mid); // 가입하려는 아이디의 존재여부 체크
	public int checkIdPwDao(String mid, String mpw); // 아이디 비밀번호 일치여부 체크
	public MemberDto getMemberDto(String mid); //아이디로 조회하여 회원정보 모두 가져오기
	

}
