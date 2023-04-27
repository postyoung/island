package com.island.app.admin.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class NoticeController {
	@GetMapping ("notice/write")
	public String noticeWrite() {
		return "admin/notice-write";
	}
	
	@GetMapping("notice/list")
	public String noticeList() {
		return "admin/notice-list";
	}
	
	@GetMapping("notice/edit")
	public String noticeEdit() {
		return "admin/notice-edit";
	}
}
