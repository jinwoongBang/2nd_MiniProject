package kr.co.laonzena.seven.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;

public interface SevenReviewService {
	List<Board> list();
	void insertBoard(Board board);
	Board detail(int no);
	void viewCnt(int no);

}
