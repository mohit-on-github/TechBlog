/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techblog.dao;

import com.techblog.entities.Category;
import com.techblog.entities.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author mht19
 */
public class PostDao {
    Connection conn;

    public PostDao(Connection conn) {
        this.conn = conn;
    }
//    to fetch categories
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list = new ArrayList<>();
        try {
            String query = "select * from categories";
            Statement st = this.conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                int cid = rs.getInt("cid");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Category c = new Category(cid, name, description);
                list.add(c);
            }
        } catch (Exception e) {
        e.printStackTrace();
        }
    return list;
    }
    
//    to save post in db
    public boolean savePost(Post p){
        boolean flag = false;
        try {
            String query = "insert into post(p_title,p_content,p_code,p_pic,catid,user_id) values(?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, p.getTitle());
            pst.setString(2, p.getContent());
            pst.setString(3, p.getCode());
            pst.setString(4, p.getPic());
            pst.setInt(5, p.getCatId());
            pst.setInt(6, p.getUserId());
            pst.executeUpdate();
            flag = true;
            
        } catch (Exception e) {
        }
        return flag;
    }
    
}
