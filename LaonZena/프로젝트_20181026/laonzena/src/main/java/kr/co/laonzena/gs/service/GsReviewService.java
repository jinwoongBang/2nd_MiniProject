package kr.co.laonzena.gs.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.co.laonzena.repository.domain.Board;

public interface GsReviewService {
	
	List<Board> boardList();
	void boardWrite(Board board);
}
