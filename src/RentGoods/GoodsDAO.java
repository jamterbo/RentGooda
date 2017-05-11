package RentGoods;

/**
 * Created by Fantasia on 2017/4/26.
 */
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by Fantasia on 2017/4/25.
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

    //获取number个商品的信息，以时间排序
    public ArrayList<Goods> getGoods(int number) throws SQLException {
        ArrayList<Goods> goods = new ArrayList<>();
        //sql语句
        String getinfo = "select name,id from goodsInfo order by dateChanged limit ?";
        PreparedStatement preparedStatement = connection.prepareStatement(getinfo);
        //设定数量
        preparedStatement.setInt(1,number);
        ResultSet set = preparedStatement.executeQuery();   //执行查询
        //添加Goods对象到List
        while (set.next()){
            Goods item = new Goods();
            item.setName(set.getString("name"));
            item.setPictures(getPictures(set.getString("id"))); //设置商品图片，调用获取图片方法
            goods.add(item);
        }
        return goods;
    }

    //获取图片路径
    public ArrayList<String> getPictures(String id) throws SQLException {
        ArrayList<String> pictures = new ArrayList<>();
        //sql语句
        String getPics = "select picpath from pictures where id=? and main='0' ";
        PreparedStatement pst = connection.prepareStatement(getPics);
        pst.setString(1,id);
        ResultSet set = pst.executeQuery();
        while (set.next()){
            pictures.add(set.getString("picpath"));
        }
        return pictures;
    }


    //获取特点ID的商品
    public Goods getGood(String id) throws SQLException {
        //sql语句
    String getInfo="select * from goodsInfo where id=?";
    PreparedStatement pstat = connection.prepareStatement(getInfo);
    pstat.setString(1,id);
    ResultSet set = pstat.executeQuery();
    set.next();
    ArrayList<String> pic=getPictures(id);
    Goods item=new Goods(set.getString("id"),
            set.getString("name"),
            set.getString("type"),
            set.getString("fineness"),
            set.getString("description"),
            pic,
            set.getString("owerId"),
            set.getDate("dateChanged"),
            set.getInt("state"),
            set.getString("borrowerId"),
            set.getDate("dateReturn"),
            set.getString("address"),
            set.getDouble("deposit"),
            set.getDouble("price"),
            set.getDouble("originprice")
            );

    return item;
    }
}
