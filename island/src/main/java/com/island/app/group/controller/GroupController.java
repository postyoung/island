package com.island.app.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("group")
public class GroupController {
	
		@GetMapping("list")
		public String list() {
			return "group/group-list";
		}
		

		@GetMapping("join")
		public String join() {
			return "group/group-join";
		}
		
		@GetMapping("detail")
		public String detail() {
			return "group/group-detail";
		}

		@GetMapping("create")
		public String create()  {return "group/group-create";}

	@GetMapping("edit")
	public String edit()  {return "group/group-edit";}
	}


