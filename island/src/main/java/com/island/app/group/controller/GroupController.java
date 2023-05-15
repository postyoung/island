package com.island.app.group.controller;

import com.island.app.common.page.PageVo;
import com.island.app.group.service.GroupService;
import com.island.app.group.vo.GroupVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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
	public String detail() {
		return "group/group-detail";
	}

	//소모임생성페이지
	@GetMapping("create")
	public String create()  {return "group/group-create";}

	//소모임수정페이지
	@GetMapping("edit")
	public String edit()  {return "group/group-edit";}

	//소모임신청자관리페이지
	@GetMapping("manage")
	public String management() {return "group/group-management";}
}


