package kr.co.laonzena.cu.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;



public interface CuReviewService {
	void write(Board board); // 리턴 값이 없다

	public Board updateForm(int no);
	
	void update(Board board);
	
	List<Board> list();
	
	Board detail(int no);
	
	void delete(int no);
	
	List<Comment> commentList(int no);
}
