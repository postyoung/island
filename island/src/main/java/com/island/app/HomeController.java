package com.island.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 메인 페이지
 * @author 서지현
 *
 */

@Controller
public class HomeController {
	@RequestMapping("main")
	public String test() {
		return "common/main";
	}
	

}
