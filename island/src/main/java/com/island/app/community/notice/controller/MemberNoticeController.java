package com.island.app.community.notice.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.notice.service.MemberNoticeService;
import com.island.app.community.qna.vo.QnaVo;

/**
 * 
 * @param mns
 * @author 김수진
 */

@Controller
@RequestMapping("community")
public class MemberNoticeController {
	private final MemberNoticeService mns;
	
	@Autowired
	public MemberNoticeController(MemberNoticeService mns) {
		this.mns = mns;
	}

	//공지사항리스트
	@GetMapping("notice/list")
	public String Noticelist(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String , String> searchMap, Model model) {
	//데이터
		int listCount = mns.getCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
	//서비스
	List<NoticeVo> nvoList =  mns.getNoticeList(pv,searchMap);
	
	model.addAttribute("searchMap",searchMap);
	model.addAttribute("pv", pv);
	model.addAttribute("nvoList" , nvoList);
	return "community/commu-main";
}
		
	//공지사항 상세
		@GetMapping("notice/detail")
		public String Noticedetail(String no, Model model) throws Exception {
			
			NoticeVo nvo = mns.getNotice(no);
			
			if(nvo == null) {
				throw new Exception("공지사항 조회실패");
			}
			model.addAttribute("nvo", nvo);
			
			return "community/notice/commu-Noticedetail";
		}

}
