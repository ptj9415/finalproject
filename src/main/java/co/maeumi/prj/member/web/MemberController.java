package co.maeumi.prj.member.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.maeumi.prj.service.MemberService;
import co.maeumi.prj.service.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberDao;
	
	// 멤버 회원가입 페이지로 이동
	@RequestMapping("/memberJoinForm.do") 
	public String memberJoinForm(Model model) {
		return "home/memberJoinForm";
	}
	
	// 닉네임 중복체크
	@PostMapping("ajaxNicknameCheck.do")
	@ResponseBody
	public String ajaxNicknameCheck(HttpServletRequest request, Model model) {
		MemberVO mvo = new MemberVO();
		mvo.setM_nickname( (String)request.getAttribute("chkNickname"));
		boolean b = memberDao.memberNicknameCheck(mvo);	
		String check = "0";  // ajax 호출한 곳으로 결과를 보내기 위한 용도.
		if(b) { // 존재하는 경우.
			check = "1"; 
		}
		return check;  
	}
	
	
	
}
