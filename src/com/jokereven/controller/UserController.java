package com.jokereven.controller;

import com.jokereven.entity.User;
import com.jokereven.service.UserService;
import com.jokereven.utils.MD5Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService service;

    //登录
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView doLogin(User user, HttpServletRequest request, HttpServletResponse response){

        ModelAndView mv = new ModelAndView();

        String username=user.getUsername();
        // 前端传过来的密码
        String password=user.getPassword();

        if(username==null ||"".equals(username)){
            mv.addObject("m","请输入用户名");
            mv.setViewName("forward:/login.jsp");
            return mv;
        }

        if(password==null ||"".equals(password)){
            mv.addObject("m","请输入密码");
            mv.setViewName("forward:/login.jsp");
            return mv;
        }

        User userone=service.selectUserByUserName(username);
        //判断是否能从数据库中查询到user 对象   如果查询到  则与用户输入的用户名存在是正确的    如果查询结果为null   就证明 用户输入的用户名在数据库不存在

        if (userone==null){
            mv.addObject("m","用户名不存在, 请重新输入");
            mv.setViewName("forward:/login.jsp");
            return mv;
        }

        //前端加密后的密码
        password=MD5Utils.stringToMD5(password);

        // 后端从  数据库中查询到的密码
        String password1=userone.getPassword();

       // 判断密码是否正确
       if(!password1.equals(password)){
           mv.addObject("m","密码错误, 请重新输入");
           mv.setViewName("forward:/login.jsp");
           return mv;
        }

        Cookie status = new Cookie("status", "true");
        Cookie uname = new Cookie("username",user.getUsername());
       //设置60秒生存期，如果设置为负值的话，则为浏览器进程Cookie(内存中保存)，关闭浏览器就失效。
        status.setMaxAge(60 * 60 * 24 * 7);
        uname.setMaxAge(60 * 60 * 24 * 7);

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        status.setPath("/");
        uname.setPath("/");

        //设置Cookie路径，不设置的话为当前路径(对于Servlet来说为request.getContextPath() + web.xml里配置的该Servlet的url-pattern路径部分)
        response.addCookie(status);
        response.addCookie(uname);

        mv.setViewName("forward:/index.jsp");
        return mv;
    }
}
