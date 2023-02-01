package com.techblog.entities;

import java.sql.Timestamp;

/**
 *
 * @author mht19
 */
public class Post {
    private int pid;
    private String title;
    private String content;
    private String code;
    private String pic;
    private Timestamp time;
    private int catId;
    private int userId;
    
//    constructor

    public Post() {
    }

    public Post(int pid, String title, String content, String code, String pic, Timestamp time, int catId, int userId) {
        this.pid = pid;
        this.title = title;
        this.content = content;
        this.code = code;
        this.pic = pic;
        this.time = time;
        this.catId = catId;
        this.userId = userId;
    }

    public Post(String title, String content, String code, String pic, Timestamp time, int catId, int userId) {
        this.title = title;
        this.content = content;
        this.code = code;
        this.pic = pic;
        this.time = time;
        this.catId = catId;
        this.userId = userId;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    
}
