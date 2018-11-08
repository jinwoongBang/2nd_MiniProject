package kr.co.laonzena.cu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;
import kr.co.laonzena.repository.mapper.CuBoardMapper;




@Service
public class CuReviewServiceImpl implements CuReviewService{
	
	@Autowired
	private CuBoardMapper mapper;
	
	@Override
	public void write(Board board) {
		mapper.insertBoard(board);
	}

	@Override
	public Board updateForm(int no) {
		 return mapper.selectBoardByNo(no);
	}

	@Override
	public void update(Board board) {
		mapper.updateBoard(board);
	}

	@Override
	public List<Board> list() {
		return mapper.selectBoard();
	}

	@Override
	public Board detail(int no) {
		return mapper.selectBoardByNo(no);
	}

	@Override
	public void delete(int no) {
		mapper.deleteBoard(no);
	}

	@Override
	public List<Comment> commentList(int no) {
		return mapper.selectCommentByNo(no);
	}

}
