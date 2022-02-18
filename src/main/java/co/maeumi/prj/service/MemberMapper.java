package co.maeumi.prj.service;

import java.util.List;

public interface MemberMapper {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO mvo); 
	boolean memberNicknameCheck(MemberVO mvo); // 닉네임 중복체크
	int memberInsert(MemberVO mvo);
	
}
