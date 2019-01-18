package com.lxz.controller;

import com.lxz.pojo.User;
import com.lxz.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    //注册
    @RequestMapping("/regist")
    @ResponseBody
    public String regist(User user){

        System.out.println("user:::"+user);
        int count = userService.addUser(user);
        if(count>0){
            return "success";
        }else {
            return "error";
        }
    }

    //查看所有用户
    @RequestMapping("/allUser")
    @ResponseBody
    public List<User> allUser(){
        List<User> allUser = userService.getAllUser();

        for(User user:allUser){
            System.out.println(user);
        }

        return allUser;
    }
}
