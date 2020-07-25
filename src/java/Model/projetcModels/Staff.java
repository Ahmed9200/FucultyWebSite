/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.projetcModels;

import Model.Util.DealingWith_DB;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author 20102
 */
public class Staff {

    private int id;
    private String name_ar;
    private String name_en;
    private String about;
    private int age;
    private String address;
    private String governorate;
    private String city;
    private String phone1;
    private String phone2;
    private String personal_mail;
    private String edu_mail;
    private InputStream CV;
    private InputStream img;
    private int dept_id;
    private String edu_status;
    private String username;
    private String password;
    private String base64_cv;
    private String base64_img;
    private String permession_level;

    public boolean add(Connection con) {
        try {
            
            PreparedStatement ps = con.prepareStatement("insert into staff values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "staff", "id")));
            ps.setString(2, name_ar);
            ps.setString(3, name_en);
            ps.setString(4, about);
            ps.setInt(5, age);
            ps.setString(6, address);
            ps.setString(7, governorate);
            ps.setString(8, city);
            ps.setString(9, phone1);
            ps.setString(10, phone2);
            ps.setString(11, personal_mail);
            ps.setString(12, edu_mail);
            ps.setBlob(13, CV);
            ps.setInt(14, dept_id);
            ps.setString(15, edu_status);
            ps.setString(16, username);
            ps.setString(17, password);
            ps.setBlob(18, img);
            ps.setString(19, permession_level);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update stuff set name_ar = ? , name_en = ? , about = ? , age = ? ,address = ? "
                    + "governorate = ? ,city=? , phone1=? , phone2=? , personal_mail=? , edu_mail=? , CV=? ,"
                    + " dept_id =? ,  edu_status=? , username=? , password=? , img=?, permession_level=?  \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setString(1, name_ar);
            ps.setString(2, name_en);
            ps.setString(3, about);
            ps.setInt(4, age);
            ps.setString(5, address);
            ps.setString(6, governorate);
            ps.setString(7, city);
            ps.setString(8, phone1);
            ps.setString(9, phone2);
            ps.setString(10, personal_mail);
            ps.setString(11, edu_mail);
            ps.setBlob(12, CV);
            ps.setInt(13, dept_id);
            ps.setString(14, edu_status);
            ps.setString(15, username);
            ps.setString(16, password);
            ps.setBlob(17, img);
            ps.setString(18, permession_level);

            ps.setInt(19, id);

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

    public String getName_ar() {
        return name_ar;
    }

    public void setName_ar(String name_ar) {
        this.name_ar = name_ar;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGovernorate() {
        return governorate;
    }

    public void setGovernorate(String governorate) {
        this.governorate = governorate;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getPersonal_mail() {
        return personal_mail;
    }

    public void setPersonal_mail(String personal_mail) {
        this.personal_mail = personal_mail;
    }

    public String getEdu_mail() {
        return edu_mail;
    }

    public void setEdu_mail(String edu_mail) {
        this.edu_mail = edu_mail;
    }

    public InputStream getCV() {
        return CV;
    }

    public void setCV(InputStream CV) {
        this.CV = CV;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getEdu_status() {
        return edu_status;
    }

    public void setEdu_status(String edu_status) {
        this.edu_status = edu_status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBase64_cv() {
        return base64_cv;
    }

    public void setBase64_cv(String base64_cv) {
        this.base64_cv = base64_cv;
    }

    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream img) {
        this.img = img;
    }

    public String getBase64_img() {
        return base64_img;
    }

    public void setBase64_img(String base64_img) {
        this.base64_img = base64_img;
    }

    public String getPermession_level() {
        return permession_level;
    }

    public void setPermession_level(String permession_level) {
        this.permession_level = permession_level;
    }

}
