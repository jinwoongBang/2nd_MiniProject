package kr.co.laonzena.mini.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;

public interface MiniReviewService {
	List<Board> list();
	void insertBoard(Board board);
	Board detail(int no);
	void viewCnt(int no);
	int deleteBoard(int no);


}
