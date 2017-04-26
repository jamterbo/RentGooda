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
        String method = req.getParameter("method");
        String username = null;
        String password = null;
        User user = null;
        UserDAO dao = null;
        try {
            dao = new UserDAO(DB_URL,root,root_password);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        switch (method){
            case "signin":
                username = req.getParameter("UserName");
                password = req.getParameter("Password");
                user = new User(username,password);
                try {
                    if (dao.login(user)){
                        HttpSession session = req.getSession();
                        session.setAttribute("User",user);
                        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/index.jsp");
                        requestDispatcher.forward(req,resp);
                    }else {
                        System.out.println("False");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "signup":
                username = req.getParameter("username");
                password = req.getParameter("password");
                user = new User(username,password);
                try {
                    dao.signup(user);
                    RequestDispatcher view = req.getRequestDispatcher("/pages/login.jsp");
                    view.forward(req,resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        }
    }
}
