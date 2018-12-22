package com.ymy.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ymy.dao.IUserDao;
import com.ymy.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class userServiceImpl implements IUserService{

    @Autowired
    private IUserDao userDao;

    @Override
    public Page selectUsers(Map<String, Object> cond) {
        Page page = new Page();
        //总条数
        page.setTotal(userDao.usersCount(cond));
        //每页条数
        int pageSize = Integer.parseInt(String.valueOf(cond.get("pageSize")));
        page.setPageSize(pageSize);
        //当前页数
        int pageNum = Integer.parseInt(String.valueOf(cond.get("pageNum")));
        page.setPageNum(pageNum);

        page = PageHelper.startPage(pageNum,pageSize);

        List<User> list = userDao.selectUsers(cond);

        System.out.println(list);

        return page;
    }

    @Override
    public int usersCount(Map<String, Object> cond) {
        return userDao.usersCount(cond);
    }

    @Override
    public int addUser(Map<String, Object> map) {
        return userDao.addUser(map);
    }

    @Override
    public User getUsersByUid(Integer uid) {
        return userDao.getUsersByUid(uid);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public int deleteUser(Map<String, Object> map) {
        return userDao.deleteUser(map);
    }

    @Override
    public int selectNameExit(User user) {
        return userDao.selectNameExit(user);
    }

    @Override
    public int insertUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public User selectUserExit(User user) {
        return userDao.selectUserExit(user);
    }

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }
}
