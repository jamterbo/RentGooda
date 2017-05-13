package RentGoods;

import org.json.simple.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Set;

/**
 * Created by LingHanchen on 2017/4/21.
 */
@MultipartConfig
public class UserManageServlet extends HttpServlet{
    //处理POST方法
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取数据库连接、账户、密码
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String root_password = getServletContext().getInitParameter("password");
        //获取执行的方法
        String method = req.getRequestURI();
        String username = null;
        String password = null;
        User user = null;
        UserDAO dao = new UserDAO(DB_URL,root,root_password);
        try {
            dao.getConnection();    //建立数据库连接
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        switch (method){
            case "/login":
                //获取post内容
                username = req.getParameter("UserName");
                password = req.getParameter("Password");
                user = new User(username,password);
                try {
                    if (dao.login(user)){
                        HttpSession session = req.getSession();
                        //添加属性到session
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

                //注册
            case "/register":
                //获取POST内容
                username = req.getParameter("username");
                password = req.getParameter("password");
                user = new User(username,password);
                try {
                    dao.signup(user);
                    resp.sendRedirect("/signin");   //重定向到登陆
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
                //个人信息管理
            case "/UserInfoManage":
                //提取post信息
                user = (User)req.getSession().getAttribute("User");
                user.setStudentID(req.getParameter("studentId"));
                user.setSchool(req.getParameter("school"));
                user.setTelephone(req.getParameter("telephone"));
                user.setEmail(req.getParameter("email"));
                user.setHead(req.getParameter("head"));
                if (req.getParameter("sex").equals("male")){
                    user.setSex(1);
                }else {
                    user.setSex(2);
                }
                user.setNickName(req.getParameter("nickName"));
                try {
                    //将信息发往数据库更新
                    dao.changeUserInfo(user);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/uploadHead":
                user = (User) req.getSession().getAttribute("User");
                int x = Integer.parseInt(req.getParameter("x"));
                int y = Integer.parseInt(req.getParameter("y"));
                int width = Integer.parseInt(req.getParameter("width"));
                int height = Integer.parseInt(req.getParameter("height"));
                Part image = req.getPart("file");
                String rootpath = getServletContext().getInitParameter("rootpath");
                String partpath = FileUtils.getFilePath(getServletContext().getInitParameter("Picspath"));
                try {
                    String filename = FileUtils.getFilename(image);
                    FileUtils.downloadFile(image.getInputStream(),rootpath+partpath,filename);
                    FileUtils.cutImage(rootpath+partpath+filename,x,y,width,height);
                    user.setHead(partpath+filename);
                    dao.uploadHead(user);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:

        }
        try {
            dao.closeConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //处理GET方法
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取数据库连接
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String root_password = getServletContext().getInitParameter("password");
        UserDAO dao = new UserDAO(DB_URL,root,root_password);
        //获取执行的动作
        String method = req.getRequestURI();
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("User");
        //验证是否登陆
        if (user == null){
            resp.sendRedirect("/signin");
            return;
        }
        switch (method){
            //请求个人中心
            case "/UserInfo":
                try {
                    dao.getConnection();
                    dao.getUserInfo(user);
                    dao.closeConnection();
                    session.setAttribute("User",user);
                    req.getRequestDispatcher("/pages/userhome.jsp").forward(req,resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                break;
            case "/getUserChatInfo":
                String who = req.getParameter("who");
                try {
                    dao.getConnection();
                    User chat = dao.getUserChatInfo(who);
                    JSONObject json = new JSONObject();
                    json.put("nickname",chat.getNickName());
                    json.put("head",chat.getHead());
                    PrintWriter writer = resp.getWriter();
                    writer.print(json.toJSONString());
                    break;
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
        }
    }
}
