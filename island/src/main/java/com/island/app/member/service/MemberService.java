package com.island.app.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.group.vo.GroupVo;
import com.island.app.member.dao.MemberDao;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.pay.vo.SeminarPayVo;
import com.island.app.seminar.vo.SeminarVo;
/**
 * 
 * @author 김수진
 *
 */
@Service
@Transactional
public class MemberService {
	
	private final SqlSessionTemplate sst;
	private final MemberDao dao;
	private final BCryptPasswordEncoder enc;
	
	@Autowired
	public MemberService(SqlSessionTemplate sst , MemberDao dao, BCryptPasswordEncoder enc) {
		this.sst = sst;
		this.dao = dao;
		this.enc = enc;

	}
	//회원가입
	public int join(MemberVo vo) throws Exception{
		
		String pwd = vo.getPwd();
		String newPwd = enc.encode(pwd);
		
		vo.setPwd(newPwd);
		
		return dao.join(sst, vo);
	}
	//아이디 중복확인
	public int checkId(String id) {
		return dao.checkId(sst , id);
	}
	
	//닉네임 중복확인
	public int checkNick(String nick) {
		return dao.checkNick(sst, nick);
	}
	//로그인
	public MemberVo login(MemberVo vo) {
		MemberVo memberVo = dao.login(sst,vo);
		
		String userPwd = vo.getPwd();
		String dbPwd = memberVo.getPwd();
		
		boolean result = enc.matches(userPwd, dbPwd);
		if(result) {
			return memberVo;
		}else {
			return null;
		}
	}
	
	//회원정보수정
	public MemberVo edit(MemberVo vo) throws Exception {
		
		String pwd = vo.getPwd();
		String newPwd = enc.encode(pwd);
		
		vo.setPwd(newPwd);
		
		int result = dao.edit(sst , vo);
		if(result != 1) {
			throw new Exception();
		}
		return dao.selectOneByNo(sst , vo);
	}
	// 회원탈퇴
	public List<String> quit(String memberId, String password, String qReason) {
	    // 입력한 비밀번호와 회원의 비밀번호 일치 여부 확인
	    MemberVo memberVo = dao.quitConfirm(sst, memberId);
	    if (memberVo != null) {
	        boolean passwordMatches = enc.matches(password, memberVo.getPwd());
	        if (passwordMatches) {
	            // 회원의 개설 내역에 진행중인 세미나/소모임이 있는지 확인
	            List<String> eventDates = dao.getEventDatesForMember(sst, memberVo.getNo());
	            if (eventDates.isEmpty()) {
	                // 비밀번호 일치하고 진행중인 세미나/소모임이 없는 경우 회원 탈퇴 처리
	                memberVo.setQReason(qReason);
	                memberVo.setQuitYn("Y");
	                dao.quit(sst, memberVo);
	                return eventDates;
	            } else {
	                return eventDates;
	            }
	        }
	    }
	    return null;
	}


	//마이페이지 문의내역
	public List<QnaVo> getWriteList(String no) {
		return dao.getWriteList(sst,no);
	}
	
	//마이페이지 관심내역 소모임
	public List<GroupVo> getInterestListGvo(String no) {
		return dao.getInterestListGvo(sst,no);
	}
	
	//관심취소 소모임
	public int interestEditGvo(String gvono) {
		return dao.interestEditGvo(sst, gvono);
	}
	
	//마이페이지 관심내역 세미나
	public List<SeminarVo> getInterestList(String no) {
		return dao.getInterestList(sst,no);
	}
	//관심취소 세미나
	public int interestEdit(String svono) {
		
		// 관심내역 취소
		int interestEditResult = dao.interestEdit(sst, svono);
		
	    // 좋아요 수 감소
	    int likeCountResult = dao.likeCount(sst, svono);


	    // 화면으로 결과 반환
	    if (likeCountResult != 1 || interestEditResult != 1) {
	        return 0; // 실패 시 반환할 값
	    } else {
	        return 1; // 성공 시 반환할 값
	    }
	}
	
	//마이페이지 신청내역 소모임
	public List<GroupVo> getEnrollListGvo(String no) {
		return dao.getEnrollListGvo(sst,no);
	}
	//신청취소 소모임
	public int enrollEditGvo(String gvono) {
		return dao.enrollEditGvo(sst, gvono);
	}

	//마이페이지 신청내역 세미나
	public List<SeminarVo> getEnrollList(String no) {
		return dao.getEnrollList(sst, no);
	}
	
	//신청취소 세미나
	public int enrollEdit(String svono) {
		
		//신청 취소
		int enrollEditResult = dao.enrollEdit(sst, svono);
		
		//참가신청한 인원-1
		int enrollCapacityResult = dao.enrollCapacityResult(sst, svono);
		
		 // 화면으로 결과 반환
	    if (enrollCapacityResult != 1 || enrollEditResult != 1) {
	        return 0; // 실패 시 반환할 값
	    } else {
	        return 1; // 성공 시 반환할 값
	    }
	}
	//신청내역에서 리뷰작성
	public SeminarVo checkSeminarReview(String no) {
		return dao.enrollReivew(sst, no);
	}
	//개설내역 소모임
	public List<GroupVo> getmadeListGroup(String no) {
		return dao.getmadeListGroup(sst,no);
	}
	//개설내역에서 소모임수정 조건확인
	public GroupVo checkGroupEdit(String no) {
		return dao.checkGroupEdit(sst, no);
	}
	//개설내역에서 소모임 신청자관리 조건확인
	public GroupVo checkGroupPeopleEdit(String no) {
		return dao.checkGroupPeopleEdit(sst,no);
	}
	//개설내역 세미나
	public List<SeminarVo> getmadeListSeminar(String no) {
		return dao.getmadeListSeminar(sst,no);
	}
	//개설내역에서 세미나수정 조건확인
	public SeminarVo checkSeminarEdit(String no) {
		return dao.checkSeminarEdit(sst,no);
	}
	//마이페이지 홈에서 최근 소모임 신청내역 보여주기
	public GroupVo RecentGroupEnroll(String no) {
		return dao.RecentGroupEnroll(sst,no);
	}
	//마이페이지 홈에서 최근 소모임 관심내역 보여주기
	public GroupVo RecentInterestGroup(String no) {
		return dao.RecentInterestGroup(sst,no);
	}
	//마이페이지 홈에서 최근 세미나 신청내역 보여주기
	public SeminarVo RecentSeminarEnroll(String no) {
		return dao.RecentSeminarEnroll(sst,no);
	}
	//마이페이지 홈에서 최근 세미나 관심내역 보여주기
	public SeminarVo RecentInterestSeminar(String no) {
		return dao.RecentInterestSeminar(sst,no);
	}
	//아이디 찾기
	public MemberVo findId(String name, String phone) {
		return dao.findId(sst, name, phone);
	}
	//비밀번호 변경전 정보검사
	public MemberVo checkInfoForPwdEdit(String id, String resident, String resident2) {
		return dao.checkInfoForPwdEdit(sst,id,resident,resident2);
	}
	//비밀번호 변경
	public int Pwdedit(MemberVo vo) {
		String pwd = vo.getPwd();
		String newPwd = enc.encode(pwd);
		
		vo.setPwd(newPwd);
		
		return dao.Pwdedit(sst,vo);
	}


	



	
	
}//class
