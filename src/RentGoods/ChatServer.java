package RentGoods;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.sql.*;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * Created by LingHanchen on 17/5/10.
 */
@ServerEndpoint(value="/chat")
public class ChatServer {
    private String userName;
    private static final Set<ChatServer> connection = new CopyOnWriteArraySet<>();
    private Session session;

    public ChatServer() {
    }

    @OnOpen
    public void onOpen(Session session){
        this.session = session;
        connection.add(this);
        User user = (User) RequestFilter.threadLocalRequest.get().getSession().getAttribute("User");
        userName = user.getUserName();
    }
    @OnMessage
    public void onMessage(String message){
        if(message.equals("History")){
            try {
                JSONArray json = getRecord();
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("method","history");
                json.add(0,jsonObject);
                session.getBasicRemote().sendObject(json);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (EncodeException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }
        JSONObject json = null;
        try {
            json= JsonUtils.parserJson(message);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String toWho = (String) json.get("toWho");
        ChatServer client = getToWho(toWho);
        if (client == null ){
            try {
                saveRecord((String)json.get("fromWho"),(String)json.get("mainInfo"),toWho);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            String mainInfo = (String)json.get("mainInfo");
            String fromWho = (String)json.get("fromWho");
            json = JsonUtils.getJson(fromWho,mainInfo,toWho);
            json.put("method","sender");
            try {
                client.session.getBasicRemote().sendObject(json);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (EncodeException e) {
                e.printStackTrace();
            }
        }
    }

    @OnClose
    public void onClose(){
        connection.remove(this);
    }

    private void saveRecord(String fromWho,String mainInfo,String toWho) throws SQLException {
        ServletContext context = RequestFilter.threadLocalRequest.get().getServletContext();
        String DB_URl = context.getInitParameter("DB_URL");
        String root = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        Connection connection = DriverManager.getConnection(DB_URl,root,password);
        String sql = "select mainInfo from chatInfo where userName=? and withWho=?";
        PreparedStatement pstat = connection.prepareStatement(sql);
        pstat.setString(1,toWho);
        pstat.setString(2,fromWho);
        ResultSet set = pstat.executeQuery();
        if(set.next()){
            String record = set.getString("mainInfo")+mainInfo;
            sql = "UPDATE chatInfo SET mainInfo=? WHERE userName=? AND withWho=?";
            pstat = connection.prepareStatement(sql);
            pstat.setString(1,record);
            pstat.setString(2,toWho);
            pstat.setString(3,fromWho);
            pstat.execute();
        }else {
            sql = "insert into chatInfo(userName,mainInfo,withWho) VALUES (?,?,?)" ;
            pstat = connection.prepareStatement(sql);
            pstat.setString(1,toWho);
            pstat.setString(2,mainInfo);
            pstat.setString(3,fromWho);
            pstat.execute();
        }
    }

    private JSONArray getRecord() throws SQLException {
        JSONArray jsonArray = new JSONArray();
        ServletContext context = RequestFilter.threadLocalRequest.get().getServletContext();
        String DB_URl = context.getInitParameter("DB_URL");
        String root = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        Connection connection = DriverManager.getConnection(DB_URl,root,password);
        String query = "select mainInfo,withWho from chatInfo where userName=?";
        PreparedStatement pstat = connection.prepareStatement(query);
        pstat.setString(1,userName);
        ResultSet set = pstat.executeQuery();
        while(set.next()){
            query = "select nickname,head from userinfo where userName=?";
            pstat = connection.prepareStatement(query);
            pstat.setString(1,userName);
            ResultSet person = pstat.executeQuery();
            person.next();
            JSONObject json = new JSONObject();
            json.put("withWho",set.getString("withWho"));
            json.put("mainInfo",set.getString("mainInfo"));
            json.put("nickname",person.getString("nickname"));
            json.put("head",person.getString("head"));
            jsonArray.add(json);
        }
        return jsonArray.isEmpty()?null:jsonArray;
    }

    private ChatServer getToWho(String toWho){
        for (ChatServer client : connection){
            if (!client.userName.equals(toWho)){
                continue;
            }
            return client;
        }
        return null;
    }
}
