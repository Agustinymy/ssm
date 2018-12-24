package com.ymy.dao;

import com.github.pagehelper.Page;
import com.ymy.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("userDao")
public interface IUserDao {
    int selectNameExit(User user);

    int insertUser(User user);

    User selectUserExit(User user);
}
