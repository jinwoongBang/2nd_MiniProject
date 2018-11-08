package kr.co.laonzena.emart.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.emart.service.EmartReviewService;
import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.domain.Page;


@Controller
@RequestMapping("/emart/review")
public class EmartReviewController {
	
	@Autowired
	private EmartReviewService service;
	
	@RequestMapping("/list.do")
	public ModelAndView list(@RequestParam(value="pageNo", defaultValue="1") String pageNo) {
		ModelAndView mav = new ModelAndView("emart/review/list");
		Page page = new Page();
		page.setPageNo(Integer.parseInt(pageNo));
		mav.addObject("list", service.list(page)); // 1~10 개까지 뽑힌 리스트 내용들이 들어있음 
		mav.addObject("currentPageNo", pageNo); // currentPageNo는 다음 버튼을 눌렀을때 페이지 요청하기 위해 만들어 둔것
		return mav; 							// /emart/review/list.do?pageNo= 1, 2, 3 로 페이지 호출 을 위해 
	}
	
	@RequestMapping("/write.do")
	public void insertBoard(Board board) {
		service.insertBoard(board);
	}
	
	@RequestMapping("/writes.do")
	public String insertBoard(Board board,List<MultipartFile> attach) throws Exception {
		String fileName="";
//		System.out.println("내용 :" + board.getContent());
//		System.out.println("아이디 :" +board.getWriter());
//		System.out.println("카테고리 :"+board.getCategory());
//		System.out.println("프로덕트 :"+board.getProduct());
		for(MultipartFile file : attach) {
			if(file.isEmpty()==true) continue; 
			System.out.println("제목 : " + board.getTitle());
			System.out.println("올린 파일 이름 :" + file.getOriginalFilename());
			file.transferTo(new File("C:/app/tomcat-work/wtpwebapps/laonzena/upload",file.getOriginalFilename()));		
			fileName += file.getOriginalFilename();
		}
		board.setSerName(fileName);
		board.setSerPath("/upload");
		
		service.insertBoard(board);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("/update.do") 
	public String updateBoard(Board board) {
		System.out.println("글번호 :" + board.getNo());
		System.out.println("제목 :" + board.getTitle());
		System.out.println("내용 :" + board.getContent());
		service.updateBoard(board);
		return "redirect:detail.do?no="+board.getNo();
	}
	
	@RequestMapping("/updateForm.do") 
	public ModelAndView updateBoardForm(int no) {
		ModelAndView mav = new ModelAndView("emart/review/updateForm");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	
	
	@RequestMapping("/detail.do")
	public ModelAndView detail(int no) {
		service.viewCnt(no);
		ModelAndView mav = new ModelAndView("emart/review/detail");
		mav.addObject("board", service.detail(no));
		mav.addObject("commentList", service.selectCommentByNo(no));
		return mav;
	}
	
	
	@RequestMapping("/delete.do")
	   public String delete(int no) throws Exception {
		System.out.println(no);
	      service.deleteBoard(no);
	      return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	 }
	
	
	@RequestMapping("/insertComment.do")
	@ResponseBody
	public List<Comment> insertComment(Comment comment) {
		service.insertComment(comment);
		return service.selectCommentByNo(comment.getBoardNo());	
	}
	
	@RequestMapping("/commentUpdate.do")
	@ResponseBody
	public List<Comment> updateComment(Comment comment) {
		service.updateComment(comment);
		return service.selectCommentByNo(comment.getBoardNo());	
	}
	
	@RequestMapping("/commentDelete.do")
	@ResponseBody
	public List<Comment> commentDelete(Comment comment) {
		service.commentDelete(comment);
		List<Comment> list = service.selectCommentByNo(35);
		System.out.println("글 번호 :"+comment.getBoardNo());
		System.out.println("리스트" +list);
		return service.selectCommentByNo(comment.getBoardNo());	
	}
}