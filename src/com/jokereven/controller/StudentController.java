package com.jokereven.controller;

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


    //注册学生
    @RequestMapping("/addStudent")
    public ModelAndView addStudent(){

        ModelAndView mv = new ModelAndView();
        String tips = "注册失败";

        mv.addObject("tips",tips);

        mv.setViewName("buyerTrade");

        return mv;
    }


}
