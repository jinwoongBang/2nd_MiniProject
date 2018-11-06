package kr.co.laonzena.repository.mapper;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;


public interface BoardMapper {
	List<Board> selectBoard();
	void insertBoard(Board board);
	Board selectBoardByNo(int no);
	int deleteBoard(int no);	
	int updateBoard(Board board);	
	List<Comment> selectCommentByNo(int no);
	void insertComment(Comment comment);
	void commentUpdate(Comment comment);
	void commentDelete(Comment comment);
	
	void viewCntUp(int no);
}
