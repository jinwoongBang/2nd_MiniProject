package kr.co.laonzena.mini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.mapper.BoardMapper;

@Service
public class MiniReviewServiceImpl implements MiniReviewService{
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

	@Override
	public int deleteBoard(int no) {
	 return mapper.deleteBoard(no);	
	}
}
