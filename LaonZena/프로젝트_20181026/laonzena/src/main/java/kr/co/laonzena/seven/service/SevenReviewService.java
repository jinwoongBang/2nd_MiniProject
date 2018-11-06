package kr.co.laonzena.seven.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;

public interface SevenReviewService {
	List<Board> list();
	void insertBoard(Board board);
	Board detail(int no);
	void viewCnt(int no);
	void insertComment(Comment comment);
	List<Comment> selectCommentByNo(int no);
	void updateComment(Comment comment);
	void commentDelete(Comment comment);

}
