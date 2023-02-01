package com.techblog.dao;

import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;
import java.sql.*;

/**
 *
 * @author mht19
 */
public class UserDao {

    private Connection conn;

    public UserDao(Connection conn) {
        this.conn = conn;
    }

//    method to insert user to database
    public boolean saveUser(User user) {
        boolean flag = false;
        try {
//            user--->database
            String query = "insert into user_details(first_name,last_name,username,email,password,gender) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.conn.prepareStatement(query);

            pst.setString(1, user.getFirst_name());
            pst.setString(2, user.getLast_name());
            pst.setString(3, user.getUsername());
            pst.setString(4, user.getEmail());
            pst.setString(5, user.getPassword());
            pst.setString(6, user.getGender());

            pst.executeUpdate();

            flag = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public User fetchUser(User user) {
        User user_obj = null;
        try {
            String query = "select * from user_details where email=? and password =? or username=? and password=?";
            PreparedStatement pst = ConnectionProvider.conn.prepareStatement(query);
            pst.setString(1, user.getEmail());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getUsername());
            pst.setString(4, user.getPassword());
            ResultSet rs = pst.executeQuery();
            System.out.println(rs);

            if (rs.next()) {
                user_obj = new User();
                
//                extract id stored in resultset fetched from db
                int id = rs.getInt("user_id");
//                set id to user obj
                user_obj.setUser_id(id);
                
                user_obj.setFirst_name(rs.getString("first_name"));
                user_obj.setLast_name(rs.getString("last_name"));
                user_obj.setUsername(rs.getString("username"));
                user_obj.setEmail(rs.getString("email"));
                user_obj.setPassword(rs.getString("password"));
                user_obj.setDate(rs.getTimestamp("rdate"));
                user_obj.setGender(rs.getString("gender"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user_obj;
    }
}
