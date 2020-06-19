/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Listeners;

import Model.Util.DBcon;
import Model.Util.Helper;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author 20102
 */
public class DBListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            // set Connection in Context Listener to Connect to DB one time
            Connection con = DBcon.setConnection();
            // set Connection Object to Context to use it whenever you want

            System.out.println("con = " + con);
            sce.getServletContext().setAttribute("DB_con", con);
            Helper.con = con;
        } catch (Exception e) {
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        // close the connection to DB when server shut down
//        try {
//            Connection con = (Connection) sce.getServletContext().getAttribute("DB_con");
//            con.close();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        }
    }
}
