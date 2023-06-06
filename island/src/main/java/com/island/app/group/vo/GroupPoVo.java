package com.island.app.group.vo;

import lombok.Data;

@Data
public class GroupPoVo {
    private String no;
    private String gNo; //소모임게시글번호
    private String originName; //원본파일명
    private String changeName; //변경파일명
}
