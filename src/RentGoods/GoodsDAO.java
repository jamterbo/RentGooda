package RentGoods;

/**
 * Created by Fantasia on 2017/4/26.
 */
import java.sql.*;

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

    public void getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(DB_URL,User,password);
    }
    public void closeConnection() throws SQLException {
        connection.close();
    }

    public void addGoods(Goods goods) throws SQLException {
        String sql="insert into goodsInfo(id,name,type,fineness,description,pictures,ownerId,dateChanged) values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps=connection.prepareStatement(sql);
        ps.setString(1,goods.getId());
        ps.setString(2,goods.getName());
        ps.setString(3,goods.getType());
        ps.setString(4,goods.getFineness());
        ps.setString(5,goods.getDescription());
        ps.setString(6,goods.getPictures());
        ps.setString(7,goods.getOwnerId());
        ps.setDate(8, (Date) goods.getDateChanged());
        ps.execute();
    }


}
