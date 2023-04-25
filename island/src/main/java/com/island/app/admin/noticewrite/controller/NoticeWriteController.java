package com.island.app.admin.noticewrite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class NoticeWriteController {
	@GetMapping ("notice-write")
	public String noticeWrite() {
		return "admin/notice-write";
	}
}
