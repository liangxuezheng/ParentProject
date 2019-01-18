package com.lxz.demo;

import com.lxz.pojo.User;
import com.lxz.user.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

    public static void main(String arg[]){
        ClassPathXmlApplicationContext classPathXmlApplicationContext=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService userServiceImpl = classPathXmlApplicationContext.getBean("userServiceImpl", UserService.class);

        User user=new User();
        user.setUname("lxz");
        user.setUpass("123");

        int i = userServiceImpl.addUser(user);

    }
}
