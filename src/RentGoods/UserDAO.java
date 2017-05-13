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

    //建立数据库连接
    public void getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(DB_URL,User,password);
    }

    //关闭数据库连接
    public void closeConnection() throws SQLException {
        connection.close();
    }

    //登陆
    public boolean login(User user) throws SQLException, ClassNotFoundException {
        //sql语句
        String sql = "select password from userinfo where userName=?";
        PreparedStatement state = connection.prepareStatement(sql);
        state.setString(1,user.getUserName());
        ResultSet rs = state.executeQuery();
        if(rs.next()){
            //验证账户密码是否正确
            return rs.getString("password").equals(user.getPassword());
        }else {
            //账户不存在
            return false;
        }
    }

    //注册
    public void signup(User user) throws SQLException {
        //sql语句
        String sql = "insert into userinfo (userName,password) values (?,?)";
        PreparedStatement state = connection.prepareStatement(sql);
        state.setString(1,user.getUserName());
        state.setString(2,user.getPassword());
        state.execute();
    }

    //获得特定的用户
    public void getUserInfo(User user) throws SQLException {
        //sql语句
        String sql = "select studentId,school,telephone,email,head,sex,credit,nickname from userinfo where userName=?";
        PreparedStatement pstat = connection.prepareStatement(sql);
        pstat.setString(1,user.getUserName());
        ResultSet set = pstat.executeQuery();
        if (set.next()){
            //获取用户的个人信息
            user.setEmail(set.getString("email"));
            user.setHead(set.getString("head"));
            user.setStudentID(set.getString("studentId"));
            user.setSchool(set.getString("school"));
            user.setTelephone(set.getString("telephone"));
            user.setSex(set.getInt("sex"));
            user.setNickName(set.getString("nickname"));
            user.setCredit(set.getDouble("credit"));
        }

    }

    //获取用户的基本信息用于聊天窗口
    public User getUserChatInfo(String who) throws SQLException {
        String query = "select nickname,head from userinfo where userName=?";
        PreparedStatement pstat = connection.prepareStatement(query);
        pstat.setString(1,who);
        ResultSet person = pstat.executeQuery();
        person.next();
        User user = new User();
        user.setNickName(person.getString("nickname"));
        user.setHead(person.getString("head"));
        return user;
    }

    //修改用户信息
    public void changeUserInfo(User user) throws SQLException {
        //sql语句
        String update = "update userinfo set studentId=?,school=?,telephone=?,email=?,head=?,sex=?,nickname=? where userName=?";
        PreparedStatement pstat = connection.prepareStatement(update);
        //sql语句准备
        pstat.setString(1,user.getStudentID());
        pstat.setString(2,user.getSchool());
        pstat.setString(3,user.getTelephone());
        pstat.setString(4,user.getEmail());
        pstat.setString(5,user.getHead());
        pstat.setInt(6,user.getSex());
        pstat.setString(7,user.getNickName());
        pstat.setString(8,user.getUserName());
        //执行更新
        pstat.executeUpdate();

    }

    //上传头像
    public void uploadHead(User user) throws SQLException{
        //sql语句
        String update = "UPDATE userinfo SET head=? WHERE userName=?";
        PreparedStatement pstat = connection.prepareStatement(update);
        pstat.setString(1,user.getHead());
        pstat.setString(2,user.getUserName());
        pstat.executeUpdate();
    }
}