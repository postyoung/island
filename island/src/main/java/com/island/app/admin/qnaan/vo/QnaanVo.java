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
    private int qNo;
    private String content;
    private String writerNo;
    private String delYn;
    private String modifyDate;
    private String enrollDate;
	private String qnaancategoryName;
}
