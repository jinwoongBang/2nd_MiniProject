package kr.co.laonzena.emart.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;


public interface EmartReviewService {
	List<Board> list();	
	void write(Board board);
	Board detail(int no);	
//	Board updateForm(int no);	
//	void update(Board board);	
//	void delete(int no);	
//	List<Comment> commentList(int no);
}
