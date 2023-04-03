package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.service.*;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class ProductController {
    @Autowired
    ProductService productService;
    @Autowired
    CartService cartService;

    @Autowired
    CartItemService cartItemService;

    @Autowired
    OrderService orderService;

    @Autowired
    OrderDetailService orderDetailService;
    @Autowired
    AccountService accountService;

    @Autowired
    AccountBankingService accountBankingService;

    @Autowired
    PaymentService paymentService;
    @RequestMapping(value = "product/{id}", method = RequestMethod.GET)
    public String showSingleProduct(Model model, @PathVariable int id) {
        Product product = productService.findById(id);
        model.addAttribute("single", product);
        return "jsp/product";
    }

    @RequestMapping(value = "/product/getProductPhoto/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        Product p = productService.findById(id);
        byte[] ph = p.getImage();
        byte[] ph1 = p.getImage1();
        byte[] ph2 = p.getImage2();
        byte[] ph3 = p.getImage3();
        byte[] ph4 = p.getBanner();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }


}
