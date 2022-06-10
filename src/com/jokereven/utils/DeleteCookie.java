package com.jokereven.utils;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

public class DeleteCookie {
    //删除某个cookie
    public static void deleteCookie(HttpServletResponse response, String domain, String path, String name, boolean httpOnly) {
        Cookie cookie = new Cookie(name, null);
        cookie.setDomain(domain);//保存cookie的IP地址,则是删除这个IP的cookie
        cookie.setPath(path);
        cookie.setMaxAge(0);
        cookie.setHttpOnly(httpOnly);
        response.addCookie(cookie);
    }
    //调用
    HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
}
