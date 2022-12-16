package com.crud.myapp.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    ProductServiceImpl ProductService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String ProductList(Model model) {
        model.addAttribute("list", ProductService.getProductList());
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(ProductVO vo) {
        if(ProductService.insertProduct(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공");
        return "redirect:list";
    }

    @RequestMapping(value = "/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        ProductVO ProductVO = ProductService.getProduct(id);
        model.addAttribute("productVO", ProductVO);
        return "editform";
    }

    @RequestMapping(value = "/viewpost/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        ProductVO ProductVO = ProductService.getProduct(id);
        model.addAttribute("productVO", ProductVO);
        return "view";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(ProductVO vo) {
        if(ProductService.updateProduct(vo) == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공");
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id) {
        if(ProductService.deleteProduct(id) == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공");
        return "redirect:../list";
    }
}
