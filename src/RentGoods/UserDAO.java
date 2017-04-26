package RentGoods;

/**
 * Created by Fantasia on 2017/4/26.
 */
import java.sql.*;

/**
 * Created by LingHanchen on 2017/4/21.
 */
public class UserDAO {
    private Connection connection;
    private PreparedStatement state;
    public UserDAO(String DB_URL,String User,String pass) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(DB_URL,User,pass);
    }
    public boolean login(User user) throws SQLException {
        String sql = "select password from userinfo where userName=?";
        state = connection.prepareStatement(sql);
        state.setString(1,user.getUserName());
        ResultSet rs = state.executeQuery();
        if(rs.next()){
            return rs.getString("password").equals(user.getPassword());
        }else {
            return false;
        }
    }

    public void signup(User user) throws SQLException {
        String sql = "insert into userinfo (userName,password) values (?,?)";
        state = connection.prepareStatement(sql);
        state.setString(1,user.getUserName());
        state.setString(2,user.getPassword());
        state.execute();
    }
}