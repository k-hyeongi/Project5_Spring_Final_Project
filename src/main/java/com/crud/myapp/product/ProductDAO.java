package com.crud.myapp.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertProduct(ProductVO vo) {
        int result = sqlSession.insert("Product.insertProduct", vo);
        return result;
    }

    public int updateProduct(ProductVO vo) {
        int result = sqlSession.update("Product.updateProduct", vo);
        return result;
    }

    public int deleteProduct(int seq) {
        int result = sqlSession.delete("Product.deleteProduct", seq);
        return result;
    }

    public ProductVO getProduct(int seq) {
        ProductVO one = sqlSession.selectOne("Product.getProduct", seq);
        return one;
    }

    public List<ProductVO> getProductList() {
        List<ProductVO> list = sqlSession.selectList("Product.getProductList");
        return list;
    }
}
