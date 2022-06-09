package com.jokereven.service;

import com.jokereven.entity.User;

public interface UserService {

    void insertUser(User user);

    User selectUserByUserName(String username);
}
