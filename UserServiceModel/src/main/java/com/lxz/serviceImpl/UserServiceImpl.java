package com.lxz.serviceImpl;

import com.lxz.mapper.UserMapper;
import com.lxz.pojo.User;
import com.lxz.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public int addUser(User user) {
        System.out.println("sssssss");
        return userMapper.insertUser(user);
    }

    @Override
    public List<User> getAllUser() {
        return userMapper.selAllUser();
    }
}
