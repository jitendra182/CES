package com;
import java.sql.*;

public class DBCon 
{
	    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ces","ces");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
