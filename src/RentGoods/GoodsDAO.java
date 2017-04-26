package RentGoods;

/**
 * Created by Fantasia on 2017/4/26.
 */
import java.sql.*;

/**
 * Created by Fantasia on 2017/4/25.
 */
public class GoodsDAO {
    public Connection getConnection(){
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://neu.sqwe.tk:3306/RentGoods";
            con= DriverManager.getConnection("url","neusc","neusc1505");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return con;
    }

    public void addGoods(){
        try {
            Connection con=getConnection();
            String sql="insert into goodsInfo(id,name,type,fineness,description,pictures,ownerId,dateChanged) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);

        }catch (Exception e){
            e.printStackTrace();
        }

    }


}
