/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.projetcModels;

import Model.Util.DealingWith_DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author 20102
 */
public class Admins {

    private int id;
    private int stuff_id;
    private Stuff adminInfo;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into admins values(?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "admins", "id")));
            ps.setInt(2, stuff_id);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update admins set stuff_id = ?   \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setInt(1, stuff_id);
            ps.setInt(2, id);

            int isUpdated = ps.executeUpdate();
            return isUpdated > 0;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

            return false;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStuff_id() {
        return stuff_id;
    }

    public void setStuff_id(int stuff_id) {
        this.stuff_id = stuff_id;
    }

    public Stuff getAdminInfo() {
        return adminInfo;
    }

    public void setAdminInfo(Stuff adminInfo) {
        this.adminInfo = adminInfo;
    }

}
