package kr.co.laonzena.gs.service;

import java.util.List;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Page;

public interface GsReviewService {
	
	List<Board> boardList(Page page);
	void boardWrite(Board board);
	Board detail(int no);
	void viewCnt(int no);
}
