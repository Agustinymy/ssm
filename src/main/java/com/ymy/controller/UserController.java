package com.ymy.controller;

import com.github.pagehelper.Page;
import com.ymy.model.User;
import com.ymy.service.IUserService;
import com.ymy.service.userServiceImpl;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping(value="/user")
public class UserController {

    @Resource
    private userServiceImpl userService;

    @RequestMapping("/register")
    @ResponseBody
    public int register(User user){
        Map map = new HashMap();
        map.put("user",user);
        System.out.println("要注册的用户名："+user.getUname());
        int i = userService.selectNameExit(user);
        System.out.println("该用户名是否存在："+i);
        int msg =0;
        if (i==1){
            //该用户存在
            msg=0;
        }else {
            //该用户不存在
            userService.insertUser(user);
            msg=1;
        }
        return msg;
    }

    @RequestMapping("/login")
    @ResponseBody
    public int login(User user){
        Map map = new HashMap();
        map.put("user",user);
        System.out.println("要登录的用户名："+user.getUname());
        User u = userService.selectUserExit(user);
        System.out.println("service："+u.getUname()+":"+u.getUpass());
        int msg = 0;
        if (user!=null){
            //该用户存在
            msg=1;
        }else {
            //该用户不存在
            msg=0;
        }
        return msg;
    }

    public userServiceImpl getUserService() {
        return userService;
    }

    public void setUserService(userServiceImpl userService) {
        this.userService = userService;
    }
}
