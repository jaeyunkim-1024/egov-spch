package com.jpademo.config;

import com.jpademo.interceptor.WebInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Autowired
    private WebInterceptor webInterceptor;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("${static.path.pattern}")
                .addResourceLocations("${static.file.locations}")
                .setCachePeriod(20);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
            registry.addInterceptor(webInterceptor)
                    .addPathPatterns("/**")
                    .excludePathPatterns("/tmpl/**");
    }
}
