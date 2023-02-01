package com.techblog.helper;

import java.sql.*;

/**
 *
 * @author mht19
 */
public class ConnectionProvider {

    public static Connection conn;

    public static Connection getConnection() {

        try {
            if(conn == null) {
                
            //load Driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //create connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "root");
            }
        }   catch (Exception e ) {
                e.printStackTrace();
            }
        return conn;
    }
 }
