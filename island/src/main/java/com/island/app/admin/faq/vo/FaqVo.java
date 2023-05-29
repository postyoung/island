package com.island.app.admin.faq.vo;

import lombok.Data;
/**
 * 
 * @author 김수경
 *
 */

@Data
public class FaqVo {
    private String no;
    private String title;
    private String content;
    private String enrollDate;
    private String delYn;
    private String categoryName;
    private String categoryNo;
    private String writerName;
    private String writerNo;
    private String loginAdmin;
    
}


