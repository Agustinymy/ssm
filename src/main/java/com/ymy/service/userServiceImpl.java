package com.ymy.service;
import com.ymy.dao.IUserDao;
import com.ymy.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("userService")
public class userServiceImpl implements IUserService{

    @Autowired
    private IUserDao userDao;

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
