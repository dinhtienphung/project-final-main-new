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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping(value = "/")
public class CartController {
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


    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String showCart(Model model) {
        double total = cartItemService.getAmount();
        model.addAttribute("total", total);
        model.addAttribute("cartItem", cartItemService.findAll());
        return "jsp/cart";
    }


    @RequestMapping(value = "/addToCart/{id}", method = RequestMethod.GET)
    public String addToCart(@PathVariable int id) {
        Cart cart = cartService.findById(1);
        Product product = productService.findById(id);

        List<CartItem> cartItemList = cartItemService.findByCartId(1);

        if (cartItemList.isEmpty()) {
            CartItem cartItem = new CartItem();
            cartItem.setProduct(product);

            cartItem.setCart(cart);
            cartItem.setQuantity(1);
            cartItemService.save(cartItem);
        } else {
            boolean cartItemCheck = false;
            for (CartItem cartItem : cartItemList) {
                if (product.getId() == cartItem.getProduct().getId()) {
                    cartItemCheck = true;
                    cartItem.setQuantity(cartItem.getQuantity() + 1);
                    cartItemService.save(cartItem);
                    break;
                }
            }
            if (cartItemCheck == false) {
                CartItem cartItem1 = new CartItem();
                cartItem1.setQuantity(1);
                cartItem1.setProduct(product);
                cartItem1.setCart(cart);
                cartItemService.save(cartItem1);
            }
        }
        return "redirect:/cart";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteCart(@PathVariable int id) {
        cartItemService.deleteById(id);
        return "redirect:/cart";

    }
//=============================check out=============================

    @RequestMapping(value = "/checkout", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String checkOut(Model model) {
        model.addAttribute("order", new Order());

        return "jsp/checkout";
    }

    @PostMapping(value = "/checkout")
    public String checkOut(Model model, HttpSession session , Order order, @RequestParam(name = "payment_method") String payment_method) {
//        AccountEntity account = session.getAttribute("account");


        AccountEntity account = accountService.findById(1);
        List<AccountBanking>  accountBankingList = (List<AccountBanking>) accountBankingService.getAccountBankingByAccountId(account.getId());
        Payment payment = new Payment();
        if (payment_method.equals("COD")) {
            if (accountBankingList == null || accountBankingList.isEmpty()) {
                return "redirect:/cart";
            } else if (accountBankingList.get(0).getBalance() < cartItemService.getAmount()) {
                model.addAttribute("msg", "khong du tien");
                return "redirect:/";
            } else {
                AccountBanking accountBanking = accountBankingList.get(0);
                List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
                for (CartItem cart : cartItems) {
                    Product product = productService.findById(cart.getProduct().getId());
                    if (product.getQuantity() < cart.getQuantity()) {
                        model.addAttribute("mss", "số lượng k đủ");
                        return "redirect:/";
                    } else {
                        accountBanking.setBalance(accountBanking.getBalance() - cartItemService.getAmount());
                        accountBankingService.save(accountBanking);
                        order.setOrderDate(new Date());
                        order.setAccount(account);
                        orderService.save(order);

                        product.setQuantity(product.getQuantity()-cart.getQuantity());
                        productService.save(product);
                        OrderDetail orderDetail = new OrderDetail();
                        orderDetail.setQuantity(cart.getQuantity());
                        orderDetail.setPrice(cart.getProduct().getPrice());
                        orderDetail.setProduct(cart.getProduct());
                        orderDetail.setOrder(order);
                        orderDetailService.save(orderDetail);

                        payment.setOrder(order);
                        payment.setAccountBanking(accountBanking);
                        payment.setPayment_date(new Date());
                        payment.setAmount(cartItemService.getAmount());
                        paymentService.save(payment);
                    }
                }
            }
            List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
            for (CartItem cart : cartItems) {
                cartItemService.deleteById(cart.getId());
            }
        }else if (payment_method.equals("CASH")) {

            List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
            for (CartItem cart : cartItems) {
                Product product = productService.findById(cart.getProduct().getId());
                if (product.getQuantity() < cart.getQuantity()) {
                    model.addAttribute("mss", "số lượng k đủ");
                    return "redirect:/";
                } else {
                    order.setOrderDate(new Date());
                    order.setAccount(account);
                    orderService.save(order);

                    product.setQuantity(product.getQuantity()-cart.getQuantity());
                    productService.save(product);
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setQuantity(cart.getQuantity());
                    orderDetail.setPrice(cart.getProduct().getPrice());
                    orderDetail.setProduct(cart.getProduct());
                    orderDetail.setOrder(order);
                    orderDetailService.save(orderDetail);

                    payment.setOrder(order);
                    payment.setPayment_date(new Date());
                    payment.setAmount(cartItemService.getAmount());
                    paymentService.save(payment);
                }
            }
        }
        List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
        for (CartItem cart : cartItems) {
            cartItemService.deleteById(cart.getId());
        }

        return "redirect:/";
    }



}

