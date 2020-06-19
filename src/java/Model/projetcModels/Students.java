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
public class Students {

    private int id;
    private String name_ar;
    private String name_en;
    private int age;
    private String mail;
    private String address;
    private String phone;
    private String governorate;
    private String city;
    private InputStream filtration_card_img;
    private InputStream birthday_card_img;
    private InputStream ssid_card_img;
    private InputStream result_card_img;
    private double totalGPA;
    private int totalHours;
    private int total_yearsNo;
    private String status;
    private String username;
    private String password;
    private int dept_id;
    private String base64_fitrationImg;
    private String base64_birthdayImg;
    private String base64_ssidImg;
    private String base64_resultImg;
    private Departments dept;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "students", "id")));
            ps.setString(2, name_ar);
            ps.setString(3, name_en);
            ps.setInt(4, age);
            ps.setString(5, mail);
            ps.setString(6, address);
            ps.setString(7, phone);
            ps.setString(8, governorate);
            ps.setString(9, city);
            ps.setBlob(10, filtration_card_img);
            ps.setBlob(11, birthday_card_img);
            ps.setBlob(12, ssid_card_img);
            ps.setBlob(13, result_card_img);
            ps.setDouble(14, totalGPA);
            ps.setInt(15, totalHours);
            ps.setInt(16, total_yearsNo);
            ps.setString(17, status);
            ps.setString(18, username);
            ps.setString(19, password);
            ps.setInt(20, dept_id);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update stuff set name_ar = ? , name_en = ? , age = ? , mail = ? ,address = ? "
                    + "phone = ? ,governorate=? , city=? , filtration_card_img=? , birthday_card_img=? , ssid_card_img=? , result_card_img=? ,"
                    + " totalGPA =? ,  totalHours=? , total_yearsNo=? , status=? , username=? , password=? , dept_id=?  \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setString(1, name_ar);
            ps.setString(2, name_en);
            ps.setInt(3, age);
            ps.setString(4, mail);
            ps.setString(5, address);
            ps.setString(6, phone);
            ps.setString(7, governorate);
            ps.setString(8, city);
            ps.setBlob(9, filtration_card_img);
            ps.setBlob(10, birthday_card_img);
            ps.setBlob(11, ssid_card_img);
            ps.setBlob(12, result_card_img);
            ps.setDouble(13, totalGPA);
            ps.setInt(14, totalHours);
            ps.setInt(15, total_yearsNo);
            ps.setString(16, status);
            ps.setString(17, username);
            ps.setString(18, password);
            ps.setInt(19, dept_id);

            ps.setInt(20, id);

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public InputStream getFiltration_card_img() {
        return filtration_card_img;
    }

    public void setFiltration_card_img(InputStream filtration_card_img) {
        this.filtration_card_img = filtration_card_img;
    }

    public InputStream getBirthday_card_img() {
        return birthday_card_img;
    }

    public void setBirthday_card_img(InputStream birthday_card_img) {
        this.birthday_card_img = birthday_card_img;
    }

    public InputStream getSsid_card_img() {
        return ssid_card_img;
    }

    public void setSsid_card_img(InputStream ssid_card_img) {
        this.ssid_card_img = ssid_card_img;
    }

    public InputStream getResult_card_img() {
        return result_card_img;
    }

    public void setResult_card_img(InputStream result_card_img) {
        this.result_card_img = result_card_img;
    }

    public double getTotalGPA() {
        return totalGPA;
    }

    public void setTotalGPA(double totalGPA) {
        this.totalGPA = totalGPA;
    }

    public int getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(int totalHours) {
        this.totalHours = totalHours;
    }

    public int getTotal_yearsNo() {
        return total_yearsNo;
    }

    public void setTotal_yearsNo(int total_yearsNo) {
        this.total_yearsNo = total_yearsNo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getBase64_fitrationImg() {
        return base64_fitrationImg;
    }

    public void setBase64_fitrationImg(String base64_fitrationImg) {
        this.base64_fitrationImg = base64_fitrationImg;
    }

    public String getBase64_birthdayImg() {
        return base64_birthdayImg;
    }

    public void setBase64_birthdayImg(String base64_birthdayImg) {
        this.base64_birthdayImg = base64_birthdayImg;
    }

    public String getBase64_ssidImg() {
        return base64_ssidImg;
    }

    public void setBase64_ssidImg(String base64_ssidImg) {
        this.base64_ssidImg = base64_ssidImg;
    }

    public String getBase64_resultImg() {
        return base64_resultImg;
    }

    public void setBase64_resultImg(String base64_resultImg) {
        this.base64_resultImg = base64_resultImg;
    }

    public Departments getDept() {
        return dept;
    }

    public void setDept(Departments dept) {
        this.dept = dept;
    }

}
