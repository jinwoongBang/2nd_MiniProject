package kr.co.laonzena.mini.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;

/**
 * 게시판 처리에 대한 비즈니스 로직 처리
 * @author mrson
 * */

public interface BoardService {
/**
 * 게시판 등록에 대한 처리
 * @param board
 * */
	void write(Board board);
	
/**
 * 게시판 수정 폼 정보를 가져온다
 * @param no - 게시글 번호
 * @return Board 게시글 번호에 대한 게시물 정보를 담고 있는 객체
 * */	
    Board updateForm(int no);
	  
	void update(Board board) ;
	
	List<Board> list();

	Board detail (int no);
	
	void delete(int no);
	
	List<Comment> commentList(int no);
	
	
	
	
	  
	  
	  
	  
}