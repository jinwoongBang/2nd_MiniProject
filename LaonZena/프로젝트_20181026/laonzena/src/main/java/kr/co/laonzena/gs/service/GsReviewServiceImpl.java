package kr.co.laonzena.gs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Page;
import kr.co.laonzena.repository.mapper.GsBoardMapper;

@Service
public class GsReviewServiceImpl implements GsReviewService {

	@Autowired
	private GsBoardMapper mapper;
	
	@Override
	public List<Board> boardList(Page page) {
		System.out.println("boardList() service invoked");
		return mapper.selectBoard(page);
	}

	@Override
	public void boardWrite(Board board) {
		System.out.println("boardWrite() service invoked");
		mapper.insertBoard(board);
	}
	
	@Override
	public Board detail(int no) {
		return mapper.selectBoardByNo(no);
	}

	@Override
	public void viewCnt(int no) {
		mapper.viewCntUp(no);
	}
	
	
	

	
	
}
