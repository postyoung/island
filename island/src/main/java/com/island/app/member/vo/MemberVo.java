package com.island.app.member.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVo {
	
	private String no;
	private String local;
	private String email2;
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String nick;
	private String gender;
	private String email;
	private String resident;
	private String resident2;
	private String attach;
	private MultipartFile profile;
	private String profileName;
	private String quitYn;
	private String reportYn;
	private String blockYn;
	private String joinDate;
	private String qReason;

}
