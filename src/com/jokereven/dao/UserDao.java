package com.jokereven.dao;

import com.jokereven.entity.User;

public interface UserDao {
    // 前端页面功能
    /*
     * 注册模块，注册成功则添加用户到用户表
     */
    void insertUser(User user);

    /*
     * 如果该项目规定，用户名不能重复，则根据用户名查询用户方法的返回值为User
     * 否则为List<User>
     * 假设该项目规定用户名不能重复
     */

    /*
     * 注册模块,根据用户名查询用户是否已经存在。如果存在，则在注册页面显示用户名以存在，请重新注册。
     * 登录模块，根据用户名查询用户是否已经存在。如果不存在，则在登录页面显示用户名不存在，请重新登录。
     */
    User selectUserByUserName(String username);



    // 后台功能模块

    /*
    查询所有用户
    查询分页数据
    修改用户信息
    根据id删除用户信息
    根据用户名查询用户
    ................
    ................
     */


}
