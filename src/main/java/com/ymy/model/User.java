package com.ymy.model;

public class User {
    private Integer uid;
    private String uname;
    private String upass;
    private Integer uflag;
    private Integer ustate;

    public User() {
    }

    public User(Integer uid, String uname, String upass, Integer uflag, Integer ustate) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.uflag = uflag;
        this.ustate = ustate;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public Integer getUflag() {
        return uflag;
    }

    public void setUflag(Integer uflag) {
        this.uflag = uflag;
    }

    public Integer getUstate() {
        return ustate;
    }

    public void setUstate(Integer ustate) {
        this.ustate = ustate;
    }
}
