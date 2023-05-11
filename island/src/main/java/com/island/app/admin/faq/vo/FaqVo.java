package com.island.app.admin.faq.vo;

import lombok.Data;

@Data
public class FaqVo {
	
	private String no;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String categoryName;
	private String writerName;
}
