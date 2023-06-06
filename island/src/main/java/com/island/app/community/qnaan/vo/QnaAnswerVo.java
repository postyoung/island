package com.island.app.community.qnaan.vo;

import lombok.Data;

@Data
public class QnaAnswerVo {
	
    private String no;
    private String qNo;
    private String content;
    private String writerNo;
    private String delYn;
    private String modifyDate;
    private String enrollDate;
    private String adminWriter;

}
