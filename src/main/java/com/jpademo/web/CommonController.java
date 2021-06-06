package com.jpademo.web;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class CommonController {

    @GetMapping("/common/find-pswd")
    public String join(Model model){
        return "/common/indexFindPswd";
    }
}
