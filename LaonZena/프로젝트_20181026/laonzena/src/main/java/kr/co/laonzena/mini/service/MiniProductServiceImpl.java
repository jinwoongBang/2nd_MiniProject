package kr.co.laonzena.mini.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.mapper.BoardMapper;

@Service
public class MiniProductServiceImpl implements MiniProductService{
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void productList() {
		//상품리스트 가져오기 
		
	}
}
