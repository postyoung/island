package com.island.app.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("group")
public class GroupController {
		//소모임목록페이지
		@GetMapping("list")
		public String list() {
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


