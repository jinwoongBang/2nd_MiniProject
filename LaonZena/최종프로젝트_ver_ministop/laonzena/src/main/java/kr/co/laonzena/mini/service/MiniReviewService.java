package kr.co.laonzena.mini.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.domain.Page;

public interface MiniReviewService {
	List<Board> list(Page page);
	void insertBoard(Board board);
	Board detail(int no);
	void viewCnt(int no);
	void insertComment(Comment comment);
	void updateBoard(Board board);
	List<Comment> selectCommentByNo(int no);
	void updateComment(Comment comment);
	void commentDelete(Comment comment);	
	int deleteBoard(int no);

}
