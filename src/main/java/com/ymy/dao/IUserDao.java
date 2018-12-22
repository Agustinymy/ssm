package com.ymy.dao;

import com.github.pagehelper.Page;
import com.ymy.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("userDao")
public interface IUserDao {

   public Page selectUsers(Map<String,Object> cond);

    int usersCount(Map<String,Object> cond);

    int addUser(Map<String,Object> map);

    User getUsersByUid(Integer uid);

    int updateUser(User user);

    int deleteUser(Map<String,Object> map);

    int selectNameExit(User user);

    int insertUser(User user);

    User selectUserExit(User user);
}
