package asm;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import asm.interceptor.AuthInterceptor;
import asm.interceptor.GlobalInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired GlobalInterceptor globalinterceptor;
	@Autowired 
	AuthInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(globalinterceptor)
			.addPathPatterns("/**")
			.excludePathPatterns("/admin/**","/assets/**");
		registry.addInterceptor(auth)
			.addPathPatterns("/admin/**", "/order/**");
	}
	
	
}
