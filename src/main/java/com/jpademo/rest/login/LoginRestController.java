package com.jpademo.rest.login;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class LoginRestController {

    @PostMapping("/login")
    public String login(){
        return "";
    }
}
