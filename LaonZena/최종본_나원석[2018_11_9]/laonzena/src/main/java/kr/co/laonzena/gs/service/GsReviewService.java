package kr.co.laonzena.gs.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.domain.Page;

public interface GsReviewService {
	
	List<Board> boardList(Page page);
	void boardWrite(Board board);
	Board detail(int no);
	void viewCnt(int no);
	void updateBoard(Board board);
	void deleteBoard(int no);
	
	List<Comment> selectCommentByNo(int no);
	void insertComment(Comment comment);
	void updateComment(Comment comment);
	void deleteComment(Comment comment);
	
}
