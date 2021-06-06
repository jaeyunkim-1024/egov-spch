package com.jpademo.web;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@Controller
@Slf4j
public class AccountController {

    @GetMapping("/account")
    public String account(Model model){
        return "/account/indexAccountRegist";
    }

    @GetMapping("/account/{page}")
    public String accountList( @PathVariable Integer page ){
        page = Optional.ofNullable(page).orElseGet(()->1);
        return "/account/indexAccountListView";
    }
}
