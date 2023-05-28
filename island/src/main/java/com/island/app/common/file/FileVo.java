package com.island.app.common.file;

import lombok.Data;


/**
 * 사진 첨부 파일 객체
 * REVIEW_ATTACH 테이블
 * @author 서지현
 *
 */
@Data
public class FileVo {
	private String no;
	private String seminarNo;
	private String reviewNo;
	private String originName;
	private String changeName;
	private String uploadDate;
	private String modifyDate;
	private String delYn;
}
