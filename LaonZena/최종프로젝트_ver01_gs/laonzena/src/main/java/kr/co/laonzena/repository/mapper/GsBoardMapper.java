package kr.co.laonzena.repository.mapper;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.domain.Page;


public interface GsBoardMapper {
	List<Board> selectBoard(Page page);
	void insertBoard(Board board);
	Board selectBoardByNo(int no);
	void deleteBoard(int no);	
	void updateBoard(Board board);	
	void viewCntUp(int no);
	
	List<Comment> selectCommentByNo(int no);
	void insertComment(Comment comment);
	void updateComment(Comment comment);
	void deleteComment(Comment comment);
	
	
}
