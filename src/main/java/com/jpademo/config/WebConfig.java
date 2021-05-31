package com.jpademo.config;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Slf4j
@Configuration
@RequiredArgsConstructor
@PropertySource("classpath:error.properties")
public class WebConfig {
    private final Environment env;
    public String getProperty(String key){
        return env.getProperty(key);
    }
}
