package co.maeumi.prj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.maeumi.prj.service.MemberMapper;
import co.maeumi.prj.service.MemberService;
import co.maeumi.prj.service.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper map;
	
	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO mvo) {
		// TODO Auto-generated method stub
		return map.memberSelect(mvo);
	}

	@Override
	public boolean memberNicknameCheck(MemberVO mvo) {
		// TODO Auto-generated method stub
		return map.memberNicknameCheck(mvo);
	}
	
	@Override
	public int memberInsert(MemberVO mvo) {
		// TODO Auto-generated method stub
		return map.memberInsert(mvo);
	}


	
}
