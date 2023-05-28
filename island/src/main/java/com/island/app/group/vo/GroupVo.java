package com.island.app.group.vo;

import lombok.Data;

@Data
public class GroupVo {
    private String no; //소모임게시글번호
    private String mNo; //개설회원번호
    private String cNo; //카테고리번호
    private String lNo; //지역번호
    private String name; //소모임명
    private String intro; //한줄소개
    private String exintro; //자세한소개
    private String place; //모임장소
    private String peoplenum; //모집인원
    private String starttime; //모임 시작시간
    private String finishtime; //모임 종료시간
    private String term; //모임기간
    private String applydate; //신청기간
    private String hit; //조회수
    private String delYn; //삭제여부
    private String reportYn; //신고여부
    private String blockYn; //블락여부
    private String enrollDate; //개설일자
    private String grClose; //모임 종료일시


}
