package kr.co.laonzena.emart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Product;
import kr.co.laonzena.repository.mapper.ProductMapper;

@Service
public class EmartProductServiceImpl implements EmartProductService {
	@Autowired
	private ProductMapper mapper;
	
	@Override
	public List<Product> list() {
		return mapper.selectBoard();
	}

}
