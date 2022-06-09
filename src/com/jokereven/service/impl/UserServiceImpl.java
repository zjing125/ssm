package com.jokereven.service.impl;

import com.jokereven.dao.UserDao;
import com.jokereven.entity.User;
import com.jokereven.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl  implements UserService {
    //引用类型自动注入@Autowired, @Resource
    @Resource
    private UserDao userDao;

    @Override
    public void insertUser(User user) {
        userDao.insertUser(user);
    }

    @Override
    public User selectUserByUserName(String username) {
        return userDao.selectUserByUserName(username);
    }


}
