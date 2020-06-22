/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Servlets;

import Model.Util.Helper;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 20102
 */
@WebServlet(name = "AddDepartment", urlPatterns = ("/AddDepartment"))
@MultipartConfig(maxFileSize = 1024 * 1024 * 150)// 1.5 MB
public class AddDepartment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        if (Helper.addDeptToDB(request)) {
            request.setAttribute("isAdded", true);
        } else {
            request.setAttribute("isAdded", false);
        }
        request.getRequestDispatcher("add-dept.jsp").forward(request, response);
    }

}
