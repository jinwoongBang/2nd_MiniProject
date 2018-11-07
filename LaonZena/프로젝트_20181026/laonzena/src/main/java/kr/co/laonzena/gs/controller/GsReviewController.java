package kr.co.laonzena.gs.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.laonzena.gs.service.GsReviewService;
import kr.co.laonzena.repository.domain.Board;

@Controller
@RequestMapping("/gs/review")
public class GsReviewController {
	
	@Autowired
	GsReviewService service;
	
	@RequestMapping("/list.do")
	public void reviewList(Model model) {
		System.out.println("reviewList() invoked");
		model.addAttribute("list", service.boardList());
	}
	
	@RequestMapping("/write.do")
	@ResponseBody
	public void reviewWrite(MultipartHttpServletRequest request) {
		System.out.println("reviewWrite() invoked");
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
        String path = "D:\\eclipse-workspace\\laonzena\\src\\main\\webapp\\upload\\";
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
                mFile.transferTo(new File(path+newFileName));
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
		mav.addObject("b", board);
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
	
	
}
