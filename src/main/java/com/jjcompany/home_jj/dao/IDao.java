package com.jjcompany.home_jj.dao;

import java.util.List;

import com.jjcompany.home_jj.dto.BoardDto;
import com.jjcompany.home_jj.dto.MemberDto;

public interface IDao {
	
	//회원관리
	public int joinDao(String mid, String mpw, String mname, String memail);
	public int checkIdDao(String mid); // 가입하려는 아이디의 존재여부 체크
	public int checkIdPwDao(String mid, String mpw); // 아이디 비밀번호 일치여부 체크
	public MemberDto getMemberDto(String mid); //아이디로 조회하여 회원정보 모두 가져오기
	public int modifyMemberDao(String mid, String mpw, String mname, String memail);
	
	//게시판관리
	public void questionWriteDao(String bid, String bname, String bcontent, String bemail);
	public List<BoardDto> questionListDao(); //모든 글목록 가져오기
	public BoardDto contentViewDao(String bnum); // 리스트에서 선택한 특정 글 가져오기
	public void deleteDao(String bnum);
}
