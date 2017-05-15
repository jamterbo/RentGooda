package RentGoods;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by Fantasia on 2017/4/25.
 *
 */
public class GoodsDAO {
    private Connection connection;
    private String DB_URL;
    private String User;
    private String password;

    public GoodsDAO(String DB_URL, String user, String password) {
        this.DB_URL = DB_URL;
        User = user;
        this.password = password;
    }

    //连接数据库
    public void getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(DB_URL,User,password);
    }
    //断开数据库连接
    public void closeConnection() throws SQLException {
        connection.close();
    }

    //添加商品
    public void addGoods(Goods goods) throws SQLException {
        //sql语句,添加商品信息到数据库
        String sql = "insert into goodsInfo(id,name,type,fineness,description,ownerId,dateChanged) values(?,?,?,?,?,?,now())";
        //替换sql语句values
        PreparedStatement ps=connection.prepareStatement(sql);
        ps.setString(1,goods.getId());
        ps.setString(2,goods.getName());
        ps.setString(3,goods.getType());
        ps.setString(4,goods.getFineness());
        ps.setString(5,goods.getDescription());
        ps.setString(6,goods.getOwnerId());
        ps.execute();   //执行sql语句

        //添加图片路径和状态至数据库
        for(String path : goods.getPictures()){
            String updatePic = "insert into pictures(picpath,id,main) values(?,?,?)";   //sql语句
            PreparedStatement pspic = connection.prepareStatement(updatePic);
            pspic.setString(1,path);
            pspic.setString(2,goods.getId());
            pspic.setInt(3,0);
            pspic.execute();
        }
    }

    //获取number个特定type的商品的信息，以时间排序
    public ArrayList<Goods> getGoodsByType(int number,String type) throws SQLException {
        ArrayList<Goods> goods = new ArrayList<>();
        //sql语句
        String getinfo = "select * from goodsInfo where type=? order by dateChanged DESC limit ? ";
        PreparedStatement preparedStatement = connection.prepareStatement(getinfo);
        //设定数量
        preparedStatement.setInt(2,number);
        preparedStatement.setString(1,type);
        ResultSet set = preparedStatement.executeQuery();   //执行查询
        //添加Goods对象到List
        //
        while (set.next()){
            ArrayList<String> pic=getPictures(set.getString("id"));
            Goods item=new Goods(set.getString("id"),
                    set.getString("name"),
                    set.getString("type"),
                    set.getString("fineness"),
                    set.getString("description"),
                    pic,
                    set.getString("ownerId"),
                    set.getDate("dateChanged"),
                    set.getInt("state"),
                    set.getString("borrowerId"),
                    set.getDate("dateReturn"),
                    set.getString("address"),
                    set.getDouble("deposit"),
                    set.getDouble("price"),
                    set.getDouble("originprice")
            );
            goods.add(item);
        }
        return goods;
    }

    //获取图片路径,数组第一个是封面
    public ArrayList<String> getPictures(String id) throws SQLException {
        ArrayList<String> pictures = new ArrayList<>();
        //sql语句

        String getCover = "select picpath from pictures where id=? and main='1' ";
        PreparedStatement pstCover =connection.prepareStatement(getCover);
        pstCover.setString(1,id);
        ResultSet resultCover=pstCover.executeQuery();
        if (resultCover.next()){
            String cover=resultCover.getString("picpath");
            pictures.add(cover);
        }


        String getPics = "select picpath from pictures where id=? and main='0' ";
        PreparedStatement pst = connection.prepareStatement(getPics);
        pst.setString(1,id);
        ResultSet set = pst.executeQuery();
        while (set.next()){
            pictures.add(set.getString("picpath"));
        }
        return pictures;
    }


    //获取特定ID的商品
    public Goods getGood(String id) throws SQLException {
        //sql语句
    String getInfo="select * from goodsInfo where id=?";
    PreparedStatement pstat = connection.prepareStatement(getInfo);
    pstat.setString(1,id);
    ResultSet set = pstat.executeQuery();
    set.next();
    ArrayList<String> pic=getPictures(id);
    return new Goods(set.getString("id"),
            set.getString("name"),
            set.getString("type"),
            set.getString("fineness"),
            set.getString("description"),
            pic,
            set.getString("ownerId"),
            set.getDate("dateChanged"),
            set.getInt("state"),
            set.getString("borrowerId"),
            set.getDate("dateReturn"),
            set.getString("address"),
            set.getDouble("deposit"),
            set.getDouble("price"),
            set.getDouble("originprice")
            );
    }

    //获取借出物品信息
    public ArrayList<Goods> getGoodsByLender(String username) throws SQLException{
        ArrayList<Goods> goods = new ArrayList<>();
        String select = "SELECT id,name,deposit,price,dateChanged,state FROM goodsInfo WHERE ownerId=?";
        PreparedStatement pstat = connection.prepareStatement(select);
        pstat.setString(1,username);
        ResultSet set = pstat.executeQuery();
        while (set.next()){
            ArrayList<User> applye = new ArrayList<>();
            Goods temp = new Goods();
            String id = set.getString("id");
            ArrayList<String> pics = getPictures(id);
            String name = set.getString("name");
            double deposit = set.getDouble("deposit");
            double price = set.getDouble("price");
            int state = set.getInt("state");
            Date dateChanged = set.getDate("dateChanged");
            select = "SELECT applyInfo.borrower,userinfo.nickname from applyInfo,userinfo WHERE goodsId=? AND applyInfo.borrower=userinfo.userName";
            pstat = connection.prepareStatement(select);
            pstat.setString(1,id);
            ResultSet borrowers = pstat.executeQuery();
            while (borrowers.next()){
                User user = new User();
                user.setUserName(borrowers.getString("borrower"));
                user.setNickName(borrowers.getString("nickname"));
                applye.add(user);
            }
            temp.setId(id);
            temp.setName(name);
            temp.setDeposit(deposit);
            temp.setPrice(price);
            temp.setState(state);
            temp.setDateChanged(dateChanged);
            temp.setApplyer(applye);
            temp.setPictures(pics);
            goods.add(temp);
        }
        return goods;
    }

    //获得借入商品信息
    public ArrayList<Goods> getGoodsByBorrower(String username) throws SQLException{
        ArrayList<Goods> items = new ArrayList<>();
        String select = "SELECT id,name,dateChanged,state,price,deposit FROM goodsInfo WHERE borrowerId=?";
        PreparedStatement pstat = connection.prepareStatement(select);
        pstat.setString(1,username);
        ResultSet set = pstat.executeQuery();
        while (set.next()){
            Goods temp = new Goods();
            String id = set.getString("id");
            ArrayList<String> pics = getPictures(id);
            String name = set.getString("name");
            Date dateChanged = set.getDate("dateChanged");
            int state = set.getInt("state");
            double price = set.getDouble("price");
            double deposit = set.getDouble("deposit");
            temp.setId(id);
            temp.setPictures(pics);
            temp.setName(name);
            temp.setDateChanged(dateChanged);
            temp.setState(state);
            temp.setPrice(price);
            temp.setDeposit(deposit);
            items.add(temp);
        }
        return items;
    }
}
