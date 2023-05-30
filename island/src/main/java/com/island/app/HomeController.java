package com.island.app;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.seminar.Service.SeminarService;
import com.island.app.seminar.vo.SeminarVo;

import lombok.extern.slf4j.Slf4j;


/**
 * 메인 페이지
 * @author 서지현
 *
 */
@Slf4j
@Controller
public class HomeController {
	private final SeminarService ss;
	
	@Autowired
	public HomeController(SeminarService ss) {
		super();
		this.ss = ss;
	}

	@RequestMapping("main")
	public String test(Model m) {
		//인기있는 세미나 조회
		List<SeminarVo> svoList = new ArrayList<SeminarVo>();
		svoList = ss.bestSeminarList();
		if(svoList == null) {
			throw new IllegalStateException("인기있는 세미나 조회 실패");
		}
		m.addAttribute("svoList",svoList);
		return "common/main";
	}
	

}
