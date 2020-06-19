/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 20102
 */
public class DBcon {

    // Declare Global Variable 
    private static Connection connect;
    private static final String DB_NAME = "fci_eslam";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "root";
    private static final String DB_PATH = "jdbc:mysql://localhost:3306/";
    private static final String UNICODE = "?autoReconnect=true&amp;useEncoding=true&amp;characterEncoding=UTF-8";
    private static String url;

    // Method for set Full URL in String url
    private static String setURL() {
        url = DB_PATH + DB_NAME + UNICODE;
        return url;
    }

//     Method for set Connection to Database and put the 
//     result in con Variable to use it when we need 
//     to make a connection to database
    public static Connection setConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connect = DriverManager.getConnection(setURL(), DB_USERNAME, DB_PASSWORD);
        } catch (SQLException var1) {
            System.out.println(var1.getMessage());
        } catch (ClassNotFoundException var2) {
            Logger.getLogger(DBcon.class.getName()).log(Level.SEVERE, (String) null, var2);
        } catch (InstantiationException var3) {
            Logger.getLogger(DBcon.class.getName()).log(Level.SEVERE, (String) null, var3);
        } catch (IllegalAccessException var4) {
            Logger.getLogger(DBcon.class.getName()).log(Level.SEVERE, (String) null, var4);
        }

        return connect;
    }
}
