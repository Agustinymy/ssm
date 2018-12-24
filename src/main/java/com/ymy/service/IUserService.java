package com.ymy.service;

import com.github.pagehelper.Page;
import com.ymy.model.User;

import java.util.List;
import java.util.Map;

public interface IUserService {

    int selectNameExit(User user);

    int insertUser(User user);

    User selectUserExit(User user);
}
