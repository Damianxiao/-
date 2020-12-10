package Servlet;

import DAO.pointviewDao;
import Entity.pointview;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PointViewDeleteServlet")
public class PointViewDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        pointviewDao p  =  new pointviewDao();
        int bool = p.deletePointview(name);
        if(bool !=0){
            response.sendRedirect("/success.jsp");
        }
        else{
            response.sendRedirect("/fail.jsp");
        }
    }
}
