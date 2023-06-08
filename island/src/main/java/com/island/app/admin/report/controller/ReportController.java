package com.island.app.admin.report.controller;

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
import com.island.app.admin.report.service.ReportService;
import com.island.app.admin.report.vo.AdminReportGroupVo;
import com.island.app.admin.report.vo.AdminReportMemberVo;
import com.island.app.admin.report.vo.AdminReportNoVo;
import com.island.app.admin.report.vo.AdminReportReviewVo;
import com.island.app.admin.report.vo.AdminReportSeminarVo;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

@Controller
@RequestMapping("admin")
public class ReportController {
	private final ReportService rs;

	@Autowired
	public ReportController(ReportService rs) {
		this.rs = rs;
	}

	// 회원 신고 목록 조회
	@GetMapping("report/member")
	public String reportMember(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model, HttpSession session) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		int pmNo = Integer.parseInt(loginAdmin.getPmNo());
		if (pmNo < 2) {
			session.setAttribute("alertMsg", "해당 관리자 등급은 접근이 불가능합니다.");
			return "redirect:/admin/main";
		}

		// 데이터
		int listCount = rs.getMemberReportCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminReportMemberVo> MemberReportList = rs.getMemberReportList(pv, searchMap);

		// 화면
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("MemberReportList", MemberReportList);
		return "admin/report-member";
	}

	// 회원 신고 상세 조회
	@RequestMapping("report/member/detail")
	public String reportMemberDetail(String no, Model model) {
		AdminReportMemberVo getReport = rs.getMemberReport(no);
		model.addAttribute("getReport", getReport);
		return "admin/report-member-detail";
	}

	// 회원 신고 (확인)
	@PostMapping("check-member-report")
	public String reportMemberCheck(String no, HttpSession session) {
		int result = rs.reportMemberCheck(no);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/member";
		}
		session.setAttribute("alertMsg", "신고 처리가 완료되었습니다.");
		return "redirect:/admin/report/member";
	}

	// 회원 (확인 및 회원 블락, 댓글 삭제)
	@PostMapping("block-member")
	public String blockMemberRe(String no, String memberNo, String replyNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setWriterNo(memberNo);
		vo.setReplyNo(replyNo);
		int result = rs.blockTheMember(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/member";
		}
		session.setAttribute("alertMsg", "신고 처리 및 회원 정지및 댓글 삭제가 완료되었습니다.");
		return "redirect:/admin/report/member";
	}

	// 소모임 신고 목록 조회
	@GetMapping("report/group")
	public String reportGroup(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model, HttpSession session) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		int pmNo = Integer.parseInt(loginAdmin.getPmNo());
		if (pmNo < 2) {
			session.setAttribute("alertMsg", "해당 관리자 등급은 접근이 불가능합니다.");
			return "redirect:/admin/main";
		}
		// 데이터
		int listCount = rs.getGroupReportCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminReportGroupVo> GroupReportList = rs.getGroupReportList(pv, searchMap);
		// List<Map<String, String>> cvoList = as.getCategoryList();

		// 화면
		// model.addAttribute("cvoList", cvoList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("GroupReportList", GroupReportList);
		return "admin/report-group";
	}

	// 소모임 신고 상세 조회
	@GetMapping("report/group/detail")
	public String reportGroupDetail(String no, Model model) {
		AdminReportGroupVo getReport = rs.getGroupReport(no);
		model.addAttribute("getReport", getReport);
		return "admin/report-group-detail";
	}

	// 소모임 신고 (확인)
	@PostMapping("check-group-report")
	public String reportGroupCheck(String no, HttpSession session) {
		int result = rs.reportGroupCheck(no);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/group";
		}
		session.setAttribute("alertMsg", "신고 처리가 완료되었습니다.");
		return "redirect:/admin/report/group";
	}

	// 소모임 신고 (확인 및 소모임 블락)
	@PostMapping("block-group")
	public String blockGroup(String no, String groupNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setGroupNo(groupNo);
		int result = rs.blockGroup(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/group";
		}
		session.setAttribute("alertMsg", "신고 처리 및 소모임 삭제가 완료되었습니다.");
		return "redirect:/admin/report/group";
	}

	// 소모임 신고 (확인 및 회원, 소모임 블락)
	@PostMapping("block-member-group")
	public String blockMemberGroup(String no, String groupNo, String writerNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setGroupNo(groupNo);
		vo.setWriterNo(writerNo);
		int result = rs.blockMemberGroup(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/group";
		}
		session.setAttribute("alertMsg", "신고 처리 및 회원 정지, 소모임 삭제가 완료되었습니다.");
		return "redirect:/admin/report/group";
	}

	// 세미나 신고 목록 조회
	@GetMapping("report/seminar")
	public String reportSeminar(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model, HttpSession session) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		int pmNo = Integer.parseInt(loginAdmin.getPmNo());
		if (pmNo < 2) {
			session.setAttribute("alertMsg", "해당 관리자 등급은 접근이 불가능합니다.");
			return "redirect:/admin/main";
		}
		// 데이터
		int listCount = rs.getSeminarReportCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminReportSeminarVo> SeminarReportList = rs.getSeminarReportList(pv, searchMap);

		// 화면
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("SeminarReportList", SeminarReportList);

		return "admin/report-seminar";
	}

	// 세미나 신고 상세 조회
	@GetMapping("report/seminar/detail")
	public String reportSeminarDetail(String no, Model model) {
		AdminReportSeminarVo getReport = rs.getSeminarReport(no);
		model.addAttribute("getReport", getReport);
		return "admin/report-seminar-detail";
	}

	// 세미나 신고 (확인)
	@PostMapping("check-report")
	public String reportCheck(String no, HttpSession session) {
		int result = rs.seminarCheck(no);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/seminar";
		}
		session.setAttribute("alertMsg", "신고 처리가 완료되었습니다.");
		return "redirect:/admin/report/seminar";
	}

	// 세미나 신고 (확인 및 세미나 블락)
	@PostMapping("block-seminar")
	public String blockSeminar(String no, String seminarNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setSeminarNo(seminarNo);
		int result = rs.blockSeminar(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/seminar";
		}
		session.setAttribute("alertMsg", "신고 처리 및 세미나 삭제가 완료되었습니다.");
		return "redirect:/admin/report/seminar";
	}

	// 세미나 신고 (확인 및 회원, 세미나 블락)
	@PostMapping("block-member-seminar")
	public String blockMember(String no, String seminarNo, String writerNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setSeminarNo(seminarNo);
		vo.setWriterNo(writerNo);
		int result = rs.blockMember(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/seminar";
		}
		session.setAttribute("alertMsg", "신고 처리 및 회원 정지, 세미나 삭제가 완료되었습니다.");
		return "redirect:/admin/report/seminar";
	}

	// 세미나 리뷰 신고 목록 조회
	@RequestMapping("report/review")
	public String reportReview(@RequestParam(defaultValue = "1") int page, @RequestParam Map<String, String> searchMap,
			Model model, HttpSession session) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		int pmNo = Integer.parseInt(loginAdmin.getPmNo());
		if (pmNo < 2) {
			session.setAttribute("alertMsg", "해당 관리자 등급은 접근이 불가능합니다.");
			return "redirect:/admin/main";
		}
		// 데이터
		int listCount = rs.getReviewReportCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);

		// 서비스
		List<AdminReportReviewVo> ReviewReportList = rs.getReviewReportList(pv, searchMap);

		// 화면
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pv", pv);
		model.addAttribute("ReviewReportList", ReviewReportList);

		return "admin/report-review";
	}

	// 세미나 리뷰 신고 상세 조회
	@RequestMapping("report/review/detail")
	public String reportReviewDetail(String no, Model model) {
		AdminReportReviewVo getReport = rs.getReviewReport(no);
		model.addAttribute("getReport", getReport);
		return "admin/report-review-detail";
	}

	// 리뷰 신고 (확인)
	@PostMapping("check-review-report")
	public String reportReviewCheck(String no, HttpSession session) {
		int result = rs.reportReviewCheck(no);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/review";
		}
		session.setAttribute("alertMsg", "신고 처리가 완료되었습니다.");
		return "redirect:/admin/report/review";
	}

	// 리뷰 신고 (확인 및 리뷰 블락)
	@PostMapping("block-review")
	public String blockReview(String no, String reviewNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setReviewNo(reviewNo);
		int result = rs.blockReview(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/review";
		}
		session.setAttribute("alertMsg", "신고 처리 및 리뷰 삭제가 완료되었습니다.");
		return "redirect:/admin/report/review";
	}

	// 리뷰 신고 (확인 및 회원, 리뷰 블락)
	@PostMapping("block-member-review")
	public String blockMemberReview(String no, String reviewNo, String writerNo, HttpSession session) throws Exception {
		AdminReportNoVo vo = new AdminReportNoVo();
		vo.setNo(no);
		vo.setReviewNo(reviewNo);
		vo.setWriterNo(writerNo);
		int result = rs.blockMemberReview(vo);
		if (result != 1) {
			session.setAttribute("alertMsg", "신고 처리에 실패하였습니다.");
			return "redirect:/admin/report/review";
		}
		session.setAttribute("alertMsg", "신고 처리 및 회원 정지, 리뷰 삭제가 완료되었습니다.");
		return "redirect:/admin/report/review";
	}
}