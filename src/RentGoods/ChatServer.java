package RentGoods;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.*;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.sql.*;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * Created by LingHanchen on 17/5/10.
 */
@ServerEndpoint(value="/chat",configurator = wsConfigurator.class)
public class ChatServer {
    private String userName;
    private static final Set<ChatServer> connection = new CopyOnWriteArraySet<>();
    private Session session;
    private ServletContext context;
    private JSONObject record;

    public ChatServer() {
    }

    @OnOpen
    public void onOpen(Session session,EndpointConfig config){
        this.session = session;
        connection.add(this);
        HttpSession httpSession = (HttpSession)config.getUserProperties().get(HttpSession.class.getName());
        context = httpSession.getServletContext();
        User user = (User)httpSession.getAttribute("User");
        userName = user.getUserName();
        record = new JSONObject();
    }
    @OnMessage
    public void onMessage(String message){
        JSONObject json = null;
        try {
            json = JsonUtils.parserJson(message);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String method = (String)json.get("method");
        if(method.equals("History")){
            try {
                json = getRecord();
                if (json!=null){
                    session.getBasicRemote().sendText(json.toJSONString());
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }else if(method.equals("chat")){
            String toWho = (String) json.get("toWho");
            String fromWho = (String)json.get("fromWho");
            String mainInfo = (String)json.get("mainInfo");
            if (toWho.equals(userName)){
                try {
                    saveRecord(fromWho,mainInfo,toWho);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }else if (fromWho.equals(userName)){
                try {
                    saveRecord(fromWho,mainInfo,toWho);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            ChatServer client = getToWho(toWho);
            if (client != null ){
                json = JsonUtils.getJson(mainInfo,fromWho);
                try {
                    client.session.getBasicRemote().sendText(json.toJSONString());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            /*
            else {
                try {
                    saveRecord(fromWho,mainInfo,toWho);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            */
        }else if(method.equals("delete")){
            String withWho = (String)json.get("delete");
            try {
                deleteRecord(userName,withWho);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


    }

    @OnClose
    public void onClose(){
        connection.remove(this);
        /*
        try {
            saveRecord(record);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        */
    }

    private void deleteRecord(String userName,String withWho) throws SQLException {
        String DB_URl = context.getInitParameter("DB_URL");
        String root = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        Connection connection = DriverManager.getConnection(DB_URl,root,password);
        String delete = "delete from chatInfo where userName=? and withWho=?";
        PreparedStatement pstat = connection.prepareStatement(delete);
        pstat.setString(1,userName);
        pstat.setString(2,withWho);
        pstat.execute();
    }

    private void saveRecord(String fromWho,String mainInfo,String toWho) throws SQLException {
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

    private void saveRecord(JSONObject record) throws SQLException {
        String DB_URl = context.getInitParameter("DB_URL");
        String root = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        Connection connection = DriverManager.getConnection(DB_URl,root,password);
        String sql = "UPDATE chatInfo SET mainInfo=? where userName=? and withWho=?";
        Set<String> keys = record.keySet();
        for (String key : keys){
            String mainInfo = (String)record.get(key);
            PreparedStatement pstat = connection.prepareStatement(sql);
            pstat.setString(1,mainInfo);
            pstat.setString(2,userName);
            pstat.setString(3,key);
            pstat.executeUpdate();
            /*
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
                sql = "insert into chatInfo(userName,mainInfo,withWho) VALUES (?,?,?)";
                pstat = connection.prepareStatement(sql);
                pstat.setString(1, toWho);
                pstat.setString(2, mainInfo);
                pstat.setString(3, fromWho);
                pstat.execute();
            }
            */
        }
    }

    private JSONObject getRecord() throws SQLException {
        String DB_URl = context.getInitParameter("DB_URL");
        String root = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        Connection connection = DriverManager.getConnection(DB_URl,root,password);
        String query = "select mainInfo,withWho from chatInfo where userName=?";
        PreparedStatement pstat = connection.prepareStatement(query);
        pstat.setString(1,userName);
        ResultSet set = pstat.executeQuery();
        while (set.next()){
            record.put(set.getString("withWho"),set.getString("mainInfo"));
        }
        if (record.isEmpty()){
            return null;
        }else {
            return record;
        }
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
