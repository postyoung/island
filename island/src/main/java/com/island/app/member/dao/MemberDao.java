package com.island.app.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.group.vo.GroupVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.pay.vo.SeminarPayVo;
import com.island.app.seminar.vo.SeminarVo;
@Repository
public class MemberDao{
	//회원가입
	public int join(SqlSessionTemplate sst, MemberVo vo) throws Exception{
		return sst.insert("member.join",vo);
	}
	//아이디 중복확인
	public int checkId(SqlSessionTemplate sst, String id) {
		return sst.selectOne("member.checkId" , id);
	}
	//닉네임 중복확인
	public int checkNick(SqlSessionTemplate sst, String nick) {
		return sst.selectOne("member.checkNick" , nick);
	}
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.login",vo);
	}
	//회원정보수정
	public int edit(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("member.edit" , vo);
	}
	public MemberVo selectOneByNo(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.getMember" , vo);
	}
	   // 회원탈퇴
    public void quit(SqlSession sst, MemberVo vo) {
        sst.update("member.quit", vo);
    }
    // 회원탈퇴 비밀번호 확인
    public MemberVo quitConfirm(SqlSessionTemplate sst, String memberId) {
        return sst.selectOne("member.quitConfirm", memberId);
    }

    // 회원의 개설 내역에 진행중인 세미나/소모임이 있는지 확인
    public List<String> getEventDatesForMember(SqlSessionTemplate sst, String no) {
        return sst.selectList("member.getEventDatesForMember", no);
    }
	//마이페이지 문의내역
	public List<QnaVo> getWriteList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getQnaList", no);
	}
	
	//마이페이지 관심내역 소모임
	public List<GroupVo> getInterestListGvo(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getInterestListGvo",no);
	}
	//관심취소 소모임
	public int interestEditGvo(SqlSessionTemplate sst, String svono) {
	    return sst.delete("member.interestEditGvo", svono);
	}
	
	//마이페이지 관심내역 세미나
	public List<SeminarVo> getInterestList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getInterestList",no);
	}
	//관심취소시 좋아요수-1
	public int likeCount(SqlSessionTemplate sst, String svono) {
		return sst.update("member.likeCount",svono);
	}
	//관심취소 세미나
	public int interestEdit(SqlSessionTemplate sst, String svono) {
	    return sst.delete("member.interestEdit", svono);
	}
	//마이페이지 신청내역 소모임
	public List<GroupVo> getEnrollListGvo(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getEnrollListGvo",no);
	}
	//신청취소 소모임
	public int enrollEditGvo(SqlSessionTemplate sst, String gvono) {
		return sst.delete("member.enrollEditGvo", gvono);
	}

	//마이페이지 신청내역 세미나
	public List<SeminarVo> getEnrollList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getEnrollList",no);
	}
	//신청취소 세미나
	public int enrollEdit(SqlSessionTemplate sst, String svono) {
		return sst.delete("member.enrollEdit", svono);
	}
	//신청인원-1
	public int enrollCapacityResult(SqlSessionTemplate sst, String svono) {
		return sst.update("member.enrollEditResult",svono);
	}
	//신청내역에서 리뷰작성
	public SeminarVo enrollReivew(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.enrolllReivew",no);
	}
	//개설내역 소모임
	public List<GroupVo> getmadeListGroup(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getmadeListGroup" , no);
	}
	//개설내역에서 소모임 수정 확인
	public GroupVo checkGroupEdit(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.checkGroupEdit", no);
	}
	//개설내역에서 소모임 신청자관리 확인
	public GroupVo checkGroupPeopleEdit(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.checkGroupPeopleEdit",no);
	}

	//개설내역 세미나
	public List<SeminarVo> getmadeListSeminar(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getmadeListSeminar", no);
	}
	//개설내역에서 세미나 수정 확인
	public SeminarVo checkSeminarEdit(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.checkSeminarEdit" ,no);
	}
	//마이페이지 홈에서 소모임 최근 신청내역 보여주기
	public GroupVo RecentGroupEnroll(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.RecentGroupEnroll", no);
	}
	//마이페이지 홈에서 소모임 최근 관심내역 보여주기
	public GroupVo RecentInterestGroup(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.RecentInterestGroup",no);
	}
	
	//마이페이지 홈에서 세미나 최근 신청내역 보여주기
	public SeminarVo RecentSeminarEnroll(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.RecentSeminarEnroll", no);
	}
	//마이페이지 홈에서 세미나 최근 관심내역 보여주기
	public SeminarVo RecentInterestSeminar(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.RecentInterestSeminar",no);
	}
	//아이디찾기
	public MemberVo findId(SqlSessionTemplate sst,String name, String phone) {
        Map<String, Object> params = new HashMap<>();
        params.put("name", name);
        params.put("phone", phone);
        
        return sst.selectOne("member.findId", params);
    }
	//비밀번호 수정전 정보확인
	public MemberVo checkInfoForPwdEdit(SqlSessionTemplate sst, String id, String resident, String resident2) {
		 Map<String, Object> params = new HashMap<>();
        params.put("id", id);
        params.put("resident", resident);
        params.put("resident2", resident2);
        
        return sst.selectOne("member.checkInfoForPwdEdit", params);
	}
	//비밀번호 변경
	public int Pwdedit(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("member.Pwdedit",vo);
	}

	

	
	
	
	

}
