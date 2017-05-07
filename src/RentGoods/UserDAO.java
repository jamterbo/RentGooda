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
    private String DB_URL;
    private String User;
    private String password;
    public UserDAO(String DB_URL,String User,String pass) {
        this.DB_URL = DB_URL;
        this.User = User;
        this.password = pass;
    }

    public void getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(DB_URL,User,password);
    }

    public void closeConnection() throws SQLException {
        connection.close();
    }

    public boolean login(User user) throws SQLException, ClassNotFoundException {
        String sql = "select password from userinfo where userName=?";
        PreparedStatement state = connection.prepareStatement(sql);
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
        PreparedStatement state = connection.prepareStatement(sql);
        state.setString(1,user.getUserName());
        state.setString(2,user.getPassword());
        state.execute();
    }

    public void search(User user) throws SQLException {
        String sql = "select studentId,school,telephone,email,head,sex from userinfo where userName=?";
        PreparedStatement pstat = connection.prepareStatement(sql);
        pstat.setString(1,user.getUserName());
        ResultSet set = pstat.executeQuery();
        set.next();
        user.setEmail(set.getString("email"));
        user.setHead(set.getString("head"));
        user.setStudentID(set.getString("studentId"));
        user.setSchool(set.getString("school"));
        user.setTelephone(set.getString("telephone"));
        user.setSex(set.getInt("sex"));
    }
}