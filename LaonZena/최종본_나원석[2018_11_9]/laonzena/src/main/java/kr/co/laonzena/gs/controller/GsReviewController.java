package kr.co.laonzena.gs.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.laonzena.gs.service.GsReviewService;
import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.domain.Page;

@Controller
@RequestMapping("/gs/review")
public class GsReviewController {
	
	@Autowired
	GsReviewService service;
	
	@RequestMapping("/list.do")
	public void reviewList(@RequestParam(value="pageNo", defaultValue="1") String pageNo, Model model) {
		System.out.println("reviewList() invoked");
		System.out.println("pageNo : " + pageNo);
		Page page = new Page();
		page.setPageNo(Integer.parseInt(pageNo));
		int begin = page.getBeginNo();
		int end = page.getEndNo();
		
		System.out.println("begin : " + begin);
		System.out.println("end : " + end);
			
		model.addAttribute("list", service.boardList(page));
		model.addAttribute("currentPageNo", pageNo);
	}
	
	@RequestMapping("/write.do")
	@ResponseBody
	public void reviewWrite(MultipartHttpServletRequest request) {
		System.out.println("reviewWrite() invoked");
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
        String path = "C:/app/tomcat-work/wtpwebapps/laonzena/upload";
        System.out.println("path : " + path);
		String newFileName = "";
		String oriFileName = "";
		
		File dir = new File(path);	
	        
        if(!dir.isDirectory()){
            dir.mkdir();
        }
        
		Iterator<String> files = request.getFileNames();
		
        while(files.hasNext()){
            String uploadFile = files.next();
                         
            MultipartFile mFile = request.getFile(uploadFile);
            oriFileName = mFile.getOriginalFilename();
            System.out.println("실제 파일 이름 : " + oriFileName);
            newFileName = date+"_"+System.currentTimeMillis()+"."
                    +oriFileName.substring(oriFileName.lastIndexOf(".")+1);
            try {
                mFile.transferTo(new File(path+"/"+newFileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        String title = request.getParameter("title");
        int category = Integer.parseInt(request.getParameter("category"));
        String product = request.getParameter("product");
        String writer = request.getParameter("writer");
        String content = request.getParameter("content");
        String oriName = oriFileName;
        String serName = newFileName;
        String serPath = path;
        
		System.out.println("title : " + title);
		System.out.println("category : " + category);
		System.out.println("product : " + product);
		System.out.println("writer : " + writer);
		System.out.println("content : " + content);
		System.out.println("oriName : " + oriName);
		System.out.println("serName : " + serName);
		System.out.println("serPath : " + serPath);
		
		Board board = new Board();
		board.setTitle(title);
		board.setCategory(category);
		board.setContent(content);
		board.setProduct(product);
		board.setWriter(writer);
		board.setOriName(oriName);
		board.setSerName(serName);
		board.setSerPath("/upload/");
		
		service.boardWrite(board);
	}
	
	@RequestMapping("/detail.do")
	public ModelAndView detail(int no){
		ModelAndView mav = new ModelAndView("gs/review/detail");
		service.viewCnt(no);
		Board board = service.detail(no);
		mav.addObject("board", board);
		return mav;
		
	}

	@RequestMapping("/search.do")
	public void searchBoard(Board board) {
		System.out.println("searchBoard() invoked");
	}
	
	@RequestMapping("/updateForm.do")
	public void updateForm(int no, Model model) {
		model.addAttribute("board",service.detail(no));
	}
	
	@RequestMapping("/update.do")
	public String update(Board board) {
		System.out.println("update() invoked");
		board.getTitle();
		board.getContent();
		board.getNo();
		service.updateBoard(board);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) {
		System.out.println("delete() invoked");
		service.deleteBoard(no);
		return "redirect:list.do";
	}
	
	@RequestMapping("/insertComment.do")
	@ResponseBody
	public List<Comment> insertComment(Comment comment) {
		System.out.println("insertComment() invoked");
		service.insertComment(comment);
		return service.selectCommentByNo(comment.getBoardNo());
	}
	@RequestMapping("/deleteComment.do")
	@ResponseBody
	public List<Comment> deleteComment(Comment comment) {
		System.out.println("deleteComment() invoked");
		service.deleteComment(comment);
		return service.selectCommentByNo(comment.getBoardNo());
	}
	@RequestMapping("/updateComment.do")
	@ResponseBody
	public List<Comment> updateComment(Comment comment) {
		System.out.println("updateComment() invoked");
		service.updateComment(comment);
		return service.selectCommentByNo(comment.getBoardNo());
	}
	
	
	
	
	
	
}
