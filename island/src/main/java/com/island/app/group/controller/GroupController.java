package com.island.app.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("group")
public class GroupController {
	
		@GetMapping("test")
		public String join() {
			return "group/group-list";
		}
	}

