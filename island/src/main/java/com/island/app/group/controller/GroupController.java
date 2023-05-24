package com.island.app.group.controller;

import com.island.app.common.page.PageVo;
import com.island.app.group.service.GroupService;
import com.island.app.group.vo.GroupVo;
import com.island.app.member.vo.MemberVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("group")
public class GroupController {
	private final GroupService groupService;

	@Autowired
	public GroupController(GroupService groupService) {
		this.groupService = groupService;
	}

	//소모임목록페이지
	@GetMapping("list")
	public String list(
			Model model,
			@RequestParam(value = "date", required = false) String enrollDate,
			@RequestParam(value = "place", required = false) String place,
			@RequestParam(defaultValue = "1") int page
	) {
		GroupVo groupVo = new GroupVo();
		groupVo.setEnrollDate(enrollDate);
		groupVo.setPlace(place);

		int listCount = groupService.getTotalCount(groupVo);
		int pageLimit = 5; // 5인 경우 하단 페이지네이션이 1, 2, 3, 4, 5 이렇게 나오도록 해주는 값
		int boardLimit = 10; // 한 페이지에 몇 개 보여줄건지
		PageVo pageVo = new PageVo(listCount, page, pageLimit, boardLimit);

		// TODO: remove this
		System.out.println(pageVo);

		List<GroupVo> groupList = groupService.list(groupVo, pageVo);
		model.addAttribute("pageVo", pageVo);
		model.addAttribute("groupList", groupList);
		return "group/group-list";
	}

	//소모임가입신청페이지
	@GetMapping("join")
	public String join() {
		return "group/group-join";
	}

	//소모임상세페이지
	@GetMapping("detail")
	public String detail(
        Model model,
        @RequestParam int no
    ) {
		// TODO: no 없는 경우 에러 처리
		GroupVo smallGroup = groupService.detail(no);
		model.addAttribute("smallGroup", smallGroup);

		return "group/group-detail";
	}

	//소모임생성페이지
	@GetMapping("create")
	public String create()  {
		return "group/group-create";
	}
	@PostMapping("create")
	public String create(GroupVo groupVo , MultipartFile multipartFile , HttpSession session , HttpServletRequest request) throws Exception {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if (loginMember == null) {
			session.setAttribute("alertMsg", "로그인 을 해주세요");
		}

		//데이터 준비
		String path = request.getServletContext().getRealPath("resources/img/group/upload/");
			return "redirect:/group/list";
		}



	//소모임수정페이지
	@GetMapping("edit")
	public String edit(GroupVo vo , RedirectAttributes ra) throws Exception {
		int result = groupService.edit(vo);

		if (result != 1) {
			throw new Exception("수정 실패");
		}

		ra.addAttribute("alertMsg", "수정하였습니다");
		ra.addAttribute("no", vo.getNo());
		return "redirect:group/detail";
	}
	//소모임신청자관리페이지
	@GetMapping("manage")
	public String management() {
		return "group/group-management";
	}
	@GetMapping("delete")
	public String delete(GroupVo groupVo , HttpSession session) throws Exception {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		String createNo = loginMember.getNo();
//		groupVo.setcreatNo(createNo);

		int result = groupService.delete(groupVo);

		if (result != 1) {
			throw  new Exception("삭제 실패..");
		}
		session.setAttribute("alerMsg","삭제 성공");
		return "redirect:board/list";
	}
}


