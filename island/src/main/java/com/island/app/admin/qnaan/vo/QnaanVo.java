package com.island.app.admin.qnaan.vo;

import lombok.Data;

/**
 * 
 * @author 김수경
 *
 */

@Data
public class QnaanVo {
	
	private String no;
	private String qNo;
    private String content;
    private String writerNo;
    private String delYn;
    private String modifyDate;
    private String enrollDate;
	private String qnaancategoryName;
	private String qnaancategoryNo;
	private String loginAdmin;
	private String categoryName;
	private String title;
	private String qnContent;
	private String writerName;
}
