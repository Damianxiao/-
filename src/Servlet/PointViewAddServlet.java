package Servlet;

import DAO.pointviewDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PointViewAddServlet")
public class PointViewAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
        String indexPicture  = new String(request.getParameter("indexPicture").getBytes("ISO-8859-1"), "UTF-8");
        String profile = new String(request.getParameter("profile").getBytes("ISO-8859-1"), "UTF-8");
        String advise = new String(request.getParameter("advise").getBytes("ISO-8859-1"), "UTF-8");
        String guide = new String(request.getParameter("guide").getBytes("ISO-8859-1"), "UTF-8");
        pointviewDao p  =new pointviewDao();
        String provinceid = new String(request.getParameter("provinceid").getBytes("ISO-8859-1"), "UTF-8");
//        int  id  = p.findbyname(province);
        int bool = p.addPointview(name,profile,advise,guide,indexPicture,provinceid);
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
