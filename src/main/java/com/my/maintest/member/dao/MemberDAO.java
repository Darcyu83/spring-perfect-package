package com.my.maintest.member.dao;

import java.sql.Date;
import java.util.Map;

import com.my.maintest.member.vo.MemberVO;

public interface MemberDAO {

	// 회원가입
	public int singup(MemberVO memberVO);

	// 아이디 찾기
	public String findID(Map<String, String> map);

	// 비밀번호 찾기
	public String findPW(Map<String, String> map);

	// 개별 조회
	public MemberVO listOneMember(String id);

	// 자동 로그인 등록
	public int keepLogin(Map<String, Object> map);

	// 자동 로그인 확인
	public MemberVO checkUserWithSessionKey(String sessionId);

}
