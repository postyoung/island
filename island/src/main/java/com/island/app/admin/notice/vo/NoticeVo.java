package com.island.app.admin.notice.vo;

import lombok.Data;

/**
 * 
 * @author 김수경
 *
 */

@Data
public class NoticeVo {
	
	private String no;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String writerNo;
	private String writerName;
	private String loginAdmin;
	
}
