package com.my.mmy.lost;

import javax.servlet.http.*;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object Handler) 
				throws Exception {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("login");
		if (obj == null) {
			response.sendRedirect(request.getContextPath() + "/login/login");
			return false;
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
				throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
