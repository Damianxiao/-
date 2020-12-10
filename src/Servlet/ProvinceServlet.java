package Servlet;

import DAO.provinceDao;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/ProvinceServlet")
public class ProvinceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
        String indexPicture  = new String(request.getParameter("indexPicture").getBytes("ISO-8859-1"), "UTF-8");
        String profile = new String(request.getParameter("profile").getBytes("ISO-8859-1"), "UTF-8");
        provinceDao p = new provinceDao();
        int bool = p.addProvince(name,indexPicture,profile);
        if(bool !=0){
            response.sendRedirect("/success.jsp");
        }
        else{
            response.sendRedirect("/fail.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
