package com.jpademo.web;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class SettingController {

    @GetMapping("/setting/server")
    public String server(Model model){
        return "/setting/indexServer";
    }

    @GetMapping("/setting/mic")
    public String mic(Model model){
        return "/setting/indexMic";
    }

    @GetMapping("/setting/room")
    public String room(Model model){
        return "/setting/indexRoom";
    }
}
