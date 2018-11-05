package kr.co.laonzena.seven.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.mapper.BoardMapper;

@Service
public class SevenReviewServiceImpl implements SevenReviewService{
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<Board> list() {
		return mapper.selectBoard();
	}
	
	
	@Override
	public void insertBoard(Board board) {
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
