package com.dev.service;

import com.dev.dao.MemberDAO;
import com.dev.vo.MemberVO;

public class MemberService {
	
	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();

	
	private MemberService() { }
	public static MemberService getInstance() {
		return service;
	}
	public void memberJoin(MemberVO member) {
		// TODO Auto-generated method stub
		dao.memberJoin(member);
	}
	public boolean login(String id, String passwd) {
		// TODO Auto-generated method stub
		return dao.login(id,passwd);
	}
	public void memberUpdate(MemberVO member) {
		// TODO Auto-generated method stub
		dao.memberUpdate(member);
		}
	public MemberVO memberSearch(String id) {
		// TODO Auto-generated method stub
		MemberVO member = dao.memberSearch(id);
		return member;
	}


}
