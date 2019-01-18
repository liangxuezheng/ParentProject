package com.lxz.mapper;

import com.lxz.pojo.User;

import java.util.List;

public interface UserMapper {
    //注册
    public int insertUser(User user);

    //查询所有用户
    public List<User> selAllUser();
}
