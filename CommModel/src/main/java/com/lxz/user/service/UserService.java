package com.lxz.user.service;

import com.lxz.pojo.User;

import java.util.List;

public interface UserService {
    //注册
    public int addUser(User user);

    //查询用户
    public List<User> getAllUser();
}
