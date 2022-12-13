package com.crud.myapp.product;

import java.util.List;

public interface ProductService {
    public int insertProduct(ProductVO vo);
    public int deleteProduct(int seq);
    public int updateProduct(ProductVO vo);
    public ProductVO getProduct(int seq);
    public List<ProductVO> getProductList();

}
