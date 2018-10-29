package kr.co.laonzena.emart.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;


public interface EmartReviewService {
	void write(Board board);
	Board updateForm(int no);	
	void update(Board board);	
	List<Board> list();	
	Board detail(int no);	
	void delete(int no);	
	List<Comment> commentList(int no);
}
