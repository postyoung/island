package com.island.app.admin.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.island.app.admin.service.AdminService;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

@Controller
@RequestMapping("admin")
public class AdminController {
	private final AdminService as;

	@Autowired
	public AdminController(AdminService as) {
		this.as = as;
	}

	// 로그인 (화면)
	@GetMapping("login")
	public String login() {
		return "admin/login";
	}

	// 로그인
	@PostMapping("login")
	public String login(AdminVo vo, HttpSession session) {
		AdminVo loginAdmin = as.login(vo);
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		session.setAttribute("loginAdmin", loginAdmin);
		return "redirect:/admin/main";
	}

	// 계정 생성 (화면)
	@GetMapping("create")
	public String create() {
		return "admin/create";
	}

	// 계정 생성
	@PostMapping("create")
	public String create(AdminVo vo, HttpSession session) {
		int result = as.create(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "계정 생성이 실패하였습니다.");
			return "redirect:/admin/create";
		}
		session.setAttribute("alertMsg", "계정 생성이 완료되었습니다.");
		return "redirect:/admin/main";
	}

	// 아이디 중복 여부 확인
	@RequestMapping("id-check")
	@ResponseBody
	public String idCheck(String id) {
		int result = as.checkId(id);
		if (result > 0) {
			return "isDup";
		} else {
			return "notDup";
		}
	}

	// 메인
	@RequestMapping("main")
	public String main() {
		return "admin/main-admin";
	}

	// 정보 수정 (화면)
	@GetMapping("edit")
	public String edit() {
		return "admin/edit";
	}

	// 정보 수정
	@PostMapping("edit")
	public String edit(AdminVo vo, Model model, HttpSession session) throws Exception {
		AdminVo updatedAdmin = as.edit(vo);
		if (updatedAdmin == null) {
			session.setAttribute("alertMsg", "정보 수정이 실패하였습니다.");
			return "redirect:/admin/edit";
		}
		session.setAttribute("loginAdmin", updatedAdmin);
		session.setAttribute("alertMsg", "정보 수정이 완료되었습니다.");
		return "redirect:/admin/main";
	}

	// 권한 설정
	@GetMapping("authorize")
	public String authorize(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model) {
		// 데이터
		int listCount = as.getCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminVo> adminList = as.getAdminList(pv, searchMap);
		// List<Map<String, String>> cvoList = as.getCategoryList();

		// 화면
		// model.addAttribute("cvoList", cvoList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("adminList", adminList);

		return "admin/authorize";
	}

	// 권한 상세 설정 (화면)
	@GetMapping("authorize/detail")
	public String authorizeChoice(String no, Model model) {
		AdminVo getAdmin = as.getAdmin(no);
		System.out.println(getAdmin);
		model.addAttribute("getAdmin", getAdmin);
		return "admin/authorize-detail";
	}

	// 권한 상세 설정
	@PostMapping("authorize/detail1")
	public String authorizeChoice1(AdminVo vo, Model model, HttpSession session) {
		int result = as.changeAuthor(vo);
		session.setAttribute("alertMsg", "수정 성공!!!");
		return "admin/main-admin";
	}

	// 권한 상세 설정
	@PostMapping("authorize/detail2")
	public String authorizeChoice2() {
		return "";
	}

	// 권한 상세 설정
	@PostMapping("authorize/detail3")
	public String authorizeChoice3() {
		return "";
	}

	// 계정 삭제
	@GetMapping("delete")
	public String delete(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model) {
		// 데이터
		int listCount = as.getCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminVo> adminList = as.getAdminList(pv, searchMap);
		// List<Map<String, String>> cvoList = as.getCategoryList();

		// 화면
		// model.addAttribute("cvoList", cvoList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("adminList", adminList);

		return "admin/delete";
	}

	@PostMapping("delete")
	public String delete(Model model) {
		AdminVo avo = (AdminVo) model.getAttribute("avo");
		int result = as.delete(avo);
		return "admin/delete";
	}

	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login";
	}
}