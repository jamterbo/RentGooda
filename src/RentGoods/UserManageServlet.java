package RentGoods;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by LingHanchen on 2017/4/21.
 */
public class UserManageServlet extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String root_password = getServletContext().getInitParameter("password");
        String method = req.getRequestURI();
        String username = null;
        String password = null;
        User user = null;
        UserDAO dao = new UserDAO(DB_URL,root,root_password);
        try {
            dao.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        switch (method){
            case "/login":
                username = req.getParameter("UserName");
                password = req.getParameter("Password");
                user = new User(username,password);
                try {
                    if (dao.login(user)){
                        HttpSession session = req.getSession();
                        session.setAttribute("User",user);
                        resp.sendRedirect("/");
                    }else {
                        System.out.println("False");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                break;
            case "/register":
                username = req.getParameter("username");
                password = req.getParameter("password");
                user = new User(username,password);
                try {
                    dao.signup(user);
                    resp.sendRedirect("/signin");
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            default:

        }
        try {
            dao.closeConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
