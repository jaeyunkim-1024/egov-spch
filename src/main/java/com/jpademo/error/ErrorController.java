package com.jpademo.error;

import com.jpademo.config.WebConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller()
public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController {

    private final String ERROR_404 = "404";

    @Autowired
    private WebConfig webConfig;

    @RequestMapping(value = "/error")
    public String index(Model model, HttpServletRequest request){
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE); // 에러 코드에 대한 상태 정보
        String statusCode = ERROR_404;
        if(status != null){
            // HttpStatus와 비교해 페이지 분기를 나누기 위한 변수
            statusCode = status.toString();
        }
        return "/error/"+statusCode;
    }
}
