package RentGoods;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by haoyun on 2017/4/26.
 */
public class ViewServlet extends HttpServlet{
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String password = getServletContext().getInitParameter("password");
        String get = req.getRequestURI();
        RequestDispatcher requestDispatcher = null;
        switch (get){
            case "/signin":
                requestDispatcher = req.getRequestDispatcher("/pages/login.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "/signup":
                requestDispatcher = req.getRequestDispatcher("/pages/signup.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "/publish":
                requestDispatcher = req.getRequestDispatcher("/pages/addGoods.jsp");
                requestDispatcher.forward(req,resp);
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
