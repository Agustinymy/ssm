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

    @RequestMapping("/toList")
    @ResponseBody
    public ModelAndView toList(){
        return new ModelAndView("list");
    }

    @RequestMapping("/getPage")
    @ResponseBody
    public Map queryUsersByPage(Integer pageNum, Integer pageSize, User user){
        Map map = new HashMap();
        map.put("pageNum",pageNum);
        map.put("pageSize",pageSize);
        map.put("user",user);
        Page page = userService.selectUsers(map);
        /*System.out.println(page);*/
        map.put("page",page);
        map.put("totalPage",page.getPages());
        return map;
    }

    /*@RequestMapping("/tPage")
    public ModelAndView tList(HttpSession session){
        User user = new User();
        user.setUname("zhangsan");
        session.setAttribute("user",user);
        return new ModelAndView("1");
    }*/

    @RequestMapping("/addUser")
    @ResponseBody
    public int addUsers(User user){
        Map map = new HashMap();
        map.put("user",user);
        System.out.println(user.getUname()+":"+user.getUpass());
        return userService.addUser(map);
    }

    /*@RequestMapping("/getUserByUid")
    public Map<String,Object> getUserByUid(User user){
        Map map = new HashMap();
        map.put("user",user);
        System.out.println(user.getUid());
        return userService.getUsersByUid(map);
    }*/

    @RequestMapping("/getUserByUid")
    @ResponseBody
    public ModelAndView getUserByUid(@RequestParam("uid") Integer uid, Model model){
        System.out.println("要修改的的用户id:"+uid);
        User u = userService.getUsersByUid(uid);
        model.addAttribute("user",u);
        return new ModelAndView("edit");
    }


    @RequestMapping("/updateUser")
    @ResponseBody
    public int update(User user){
        System.out.println(user.getUname()+":"+user.getUpass());
        System.out.println(user);
        System.out.println(userService.updateUser(user));
        return userService.updateUser(user);
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public int delete(User user){
        Map map = new HashMap();
        map.put("user",user);
        System.out.println("要删除的用户："+user.getUname());
        return userService.deleteUser(map);
    }

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
