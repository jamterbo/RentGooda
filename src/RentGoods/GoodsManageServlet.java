package RentGoods;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by haoyun on 2017/4/26.
 */
public class GoodsManageServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String method = req.getRequestURI();
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String password = getServletContext().getInitParameter("password");
        GoodsDAO goodsDAO = new GoodsDAO(DB_URL,root,password);
        try {
            goodsDAO.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        switch (method){
            case "/addGoods":
                try {
                    String id = DateUtils.getStringDate();
                    String name = req.getParameter("name");
                    String type = req.getParameter("type");
                    String fineness = req.getParameter("fineness");
                    String description = req.getParameter("description");
//                    String owner = ((User)req.getSession().getAttribute("User")).getUserName();
                    String phone = req.getParameter("phone");
                    Goods item = new Goods(id,name,type,fineness,description,"root",0);
                    Collection<Part> parts = req.getParts();
                    ArrayList<String> picpaths = new ArrayList<String>();
                    for (Part part : parts) {
                        if(!part.getName().equals("photo")){
                            continue;
                        }else {
                            String filename = FileUtils.getFilename(part);
                            Thread.sleep(1000);
                            part.write(filename);
                            picpaths.add(getServletContext().getInitParameter("Picspath")+filename);
                        }
                    }
                    item.setPictures(picpaths);
                    goodsDAO.addGoods(item);
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                break;
            default:
                break;
        }
        try {
            goodsDAO.closeConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String method = req.getRequestURI();
        String DB_URL = getServletContext().getInitParameter("DB_URL");
        String root = getServletContext().getInitParameter("username");
        String password = getServletContext().getInitParameter("password");
        GoodsDAO goodsDAO = new GoodsDAO(DB_URL,root,password);
        try {
            goodsDAO.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        switch (method){
            case "/home":
                try {
                    ArrayList<Goods> goods = goodsDAO.getGoods(20);
                    req.setAttribute("goods",goods);
                    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/pages/index.jsp");
                    requestDispatcher.forward(req,resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }
}
