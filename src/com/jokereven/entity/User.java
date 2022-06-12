package com.jokereven.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {
    private String id;
    private String username;
    private String password;
    private String RePassword;
    private Integer type;
    // 无参构造方法（必须）

    // 有参构造方法（可写可不写，根据实际需求来）

    // setXX getXX 方法

    // toString方法

    // equals方法

    //hashCode 方法
}
