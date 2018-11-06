package kr.co.laonzena.gs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.mapper.BoardMapper;

@Service
public class GsReviewServiceImpl implements GsReviewService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<Board> boardList() {
		System.out.println("boardList() service invoked");
		return mapper.selectBoard();
	}

	@Override
	public void boardWrite(Board board) {
		System.out.println("boardWrite() service invoked");
		board.setOriName("test");
		board.setSerName("test");
		board.setSerPath("test");
		mapper.insertBoard(board);
	}
	
	

	
	
}
