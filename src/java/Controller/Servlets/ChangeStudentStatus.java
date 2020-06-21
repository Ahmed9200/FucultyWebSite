/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Servlets;

import Model.Util.Helper;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 20102
 */
public class ChangeStudentStatus extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        if (Helper.changeStudentStatusInDB(request, request.getParameter("oldStatus"), request.getParameter("newStatus")) == null) {
            response.sendRedirect("admin-student-applocations.jsp");
        } else {
            request.getRequestDispatcher("admin-student-applocations.jsp").forward(request, response);

        }
    }
}
