package com.jjcompany.home_jj.controller;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jjcompany.home_jj.dao.IDao;
import com.jjcompany.home_jj.dto.BoardDto;
import com.jjcompany.home_jj.dto.Criteria;
import com.jjcompany.home_jj.dto.MemberDto;
import com.jjcompany.home_jj.dto.PageDto;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	@RequestMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	@RequestMapping(value = "/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping(value = "/question")
	public String question(HttpServletRequest request, Model model, HttpSession session) {
		
		String sessionId =  (String)session.getAttribute("sessionId");
		
		MemberDto dto = new MemberDto("GUEST"," ","비회원"," "," ");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		if (sessionId == null){
			model.addAttribute("memberDto", dto);
		}else {	
			model.addAttribute("memberDto", dao.getMemberDto(sessionId));
		}
		
		return "question";
	}
	@RequestMapping(value = "/joinOk")
	public String joinoK(HttpServletRequest request, Model model) { 
		
		String mid = request.getParameter("mid");
		String mpw= request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int joinCheck = 0;
		int checkId = dao.checkIdDao(mid); //가입하려는 아이디 존재여부 체크 1이면 이미존재

		if(checkId == 0) {
			joinCheck = dao.joinDao(mid, mpw, mname, memail);
			model.addAttribute("checkId", checkId);
			// joinCheck 값이 1이면 회원가입 성공, 아니면 싫패
		}else { // 회원가입 실패
			model.addAttribute("checkId", checkId);
		}
		
		if(joinCheck == 1 ) {
			model.addAttribute("joinFlag", joinCheck);
			model.addAttribute("memberName", mname);
			model.addAttribute("memberId", mid);
		} else { // 회원가입 실패
			model.addAttribute("joinFlag", joinCheck);
		}

		return "joinOk";
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session, MemberDto memberDto) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdPwFlag = dao.checkIdPwDao(mid, mpw);
		
		model.addAttribute("checkIdPwFlag", checkIdPwFlag);
		
		if(checkIdPwFlag == 1) {
			session.setAttribute("sessionId", mid);
			model.addAttribute("memberDto", dao.getMemberDto(mid));
		}
		
		return "loginOk";
	}
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();//세션 삭제
		return "redirect:login";
	}
	@RequestMapping(value = "/modify")
	public String modify(HttpSession session, Model model, HttpServletRequest request) {
		
		String sessionId =  (String)session.getAttribute("sessionId");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("memberDto", dao.getMemberDto(sessionId));
		
		return "modifyForm";
	}
	@RequestMapping(value = "/modifyOk")
	public String modifyOk(Model model, HttpServletRequest request) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.modifyMemberDao(mid, mpw, mname, memail);
		
		model.addAttribute("memberDto", dao.getMemberDto(mid)); // 수정의 된 후의 회원 정보
		
		return "modifyOk";
	}
@RequestMapping(value = "/questionOk")
public String questionOk(HttpServletRequest request) {
	
	String bid = request.getParameter("bid");
	String bname = request.getParameter("bname");
	String bcontent = request.getParameter("bcontent");
	String bemail = request.getParameter("bemail");
	
	IDao dao = sqlSession.getMapper(IDao.class);
	
	dao.questionWriteDao(bid, bname, bcontent, bemail);
	
	return "redirect:list";
	}
@RequestMapping(value = "/list")
public String list(Model model, Criteria criteria, HttpServletRequest request) {
	
	int pageNum=0;
	if(request.getParameter("pageNum") == null) {
		pageNum = 1;
	}else {
		pageNum = Integer.parseInt(request.getParameter("pageNum"));
		criteria.setPageNum(pageNum);
	}
	
	IDao dao = sqlSession.getMapper(IDao.class);
	
	int total = dao.boardAllCountDao();
	
	PageDto pageDto = new PageDto(criteria, total);
	
	List<BoardDto> boardDtos = dao.questionListDao(criteria.getAmount(), pageNum);
	
	model.addAttribute("pageMaker", pageDto);
	model.addAttribute("boardDtos", boardDtos);
	model.addAttribute("currPage", pageNum);
	
	return"list";
	}
@RequestMapping(value = "/contentView")
public String contentView(HttpServletRequest request, Model model) {
	
	IDao dao = sqlSession.getMapper(IDao.class);
	
	BoardDto dto = dao.contentViewDao(request.getParameter("bnum"));
	
	model.addAttribute("boardDto", dto);
	
	return"contentView";
	}
@RequestMapping(value = "/delete")
public String delete(HttpServletRequest request) {
	
	IDao dao = sqlSession.getMapper(IDao.class);
	
	dao.deleteDao(request.getParameter("bnum"));

	return "redirect:list";
	}
}
