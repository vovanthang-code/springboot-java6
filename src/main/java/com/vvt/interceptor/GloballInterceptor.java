package com.vvt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.vvt.service.CategoryService;

@Component
public class GloballInterceptor implements HandlerInterceptor{
	@Autowired CategoryService categoryService;
	
	@Override//thực hiện trong controller xong mơi chạy posthandle
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		request.setAttribute("cates", categoryService.findAll());
	}
}
