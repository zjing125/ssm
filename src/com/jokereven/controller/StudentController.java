package com.jokereven.controller;


import com.jokereven.entity.Student;
import com.jokereven.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;

    /*

    ModelAndView:
          Model   模型
          View    视图  资源
     */


    //注册学生
    @RequestMapping("/addStudent")
    public ModelAndView addStudent(Student student){

        ModelAndView mv = new ModelAndView();
        String tips = "注册失败";
        //调用service处理student
        int nums = service.addStudent(student);

        if( nums > 0 ){
            //注册成功
            tips = "学生【" + student.getName() + "】注册成功";
        }

         //  在跳转资源的时候  把存的数据携带过去
        // req.setAttribute("msg", "用户名已存在");
        //添加数据
        mv.addObject("tips",tips);


        // 跳转资源
        // 请求转发   ：   跳转资源    资源：静态资源（html css  图片）   动态资源（jsp  。。。。）
        //req.getRequestDispatcher("register.jsp").forward(req, res);
        //指定结果页面
        mv.setViewName("result");


        return mv;

    }





}
