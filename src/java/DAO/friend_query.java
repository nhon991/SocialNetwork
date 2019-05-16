/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.friendlist;
import model.User;
import java.util.ArrayList;
/**
 *
 * @author Administrator
 */
public class friend_query {
    private Connection conn;
    private ResultSet results;
   

    public friend_query() {
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");//let me read content of a file 
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(friend_query.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(friend_query.class.getName()).log(Level.SEVERE, null, ex);
        }
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(friend_query.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = (Connection) DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(friend_query.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addfriend(User us1, User us2) throws SQLException{
        
            String sql = "INSERT INTO `socialnetworkdb`.`friendlist` ( `from_id`, `to_id`) VALUES ( ?, ?);";
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            this.results = ps.getGeneratedKeys();
            ps.setInt(1, us1.getUser_id());
            ps.setInt(2, us2.getUser_id());
            ps.setString(3, us1.getUsername());
            ps.setString(4, us2.getUsername());
            ps.executeUpdate();
            this.results = ps.getGeneratedKeys();
            return;
    }
       public void addfriendByID(int From_ID, int To_ID) throws SQLException{
        
            String sql = "INSERT INTO `socialnetworkdb`.`friendlist` ( `from_id`, `to_id`) VALUES ( ?, ?);";
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, From_ID);
            ps.setInt(2, To_ID);
            ps.executeUpdate();
            this.results = ps.getGeneratedKeys();
            return;
    }
       public int countFollowing(int UserID) throws SQLException{
           String sql="SELECT COUNT(*) as count from socialnetworkdb.friendlist where from_id=?";
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setInt(1, UserID);
           this.results=ps.executeQuery();
           results.next();
           int count=this.results.getInt("count");
           return count;
       }
        public int countFollowed(int UserID) throws SQLException{
           String sql="SELECT COUNT(*) as count from socialnetworkdb.friendlist where to_id=?";
           PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1, UserID);
           this.results=ps.executeQuery();
           results.next();
           int count=this.results.getInt("count");
           return count;
       }
        public boolean isFriend(int from_id, int to_id) throws SQLException{
            String sql="SELECT * FROM socialnetworkdb.friendlist where to_id=? and from_id=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(2, from_id);
            ps.setInt(1, to_id);
            this.results=ps.executeQuery();
           if(results.next()) return true;
           else return false;
        }
        public ArrayList<User> searchFollowingByID(int user_id) throws SQLException {
        
        ArrayList<User> UserList = new ArrayList<>();
        String sql = "SELECT * FROM socialnetworkdb.friendlist as fl, socialnetworkdb.user as us where fl.to_id=us.user_id and us.user_id=? ";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, user_id);
        this.results = ps.executeQuery();
        while(results.next()){
        User us = new User();   
        us.setUser_id(this.results.getInt("user_id"));
        us.setUsername(this.results.getString("user_name"));
        us.setPassword(this.results.getString("password"));
        us.setFirst_name(this.results.getString("first_name"));
        us.setLast_name(this.results.getString("last_name"));
        us.setDate_of_birth(this.results.getString("date_of_birth"));
        us.setAvatar(this.results.getString("avatar"));
        us.setGender(this.results.getInt("gender"));
        us.setCountry(this.results.getString("country"));
        us.setHobby(this.results.getString("hobby"));
        us.setPhone(this.results.getString("phone"));
        us.setEmail(this.results.getString("email"));
        UserList.add(us);
        }
        return UserList;
       
    }
         public ArrayList<User> searchFollowedByID(int user_id) throws SQLException {
        
        ArrayList<User> UserList = new ArrayList<>();
        String sql = "SELECT * FROM socialnetworkdb.friendlist as fl, socialnetworkdb.user as us where fl.from_id=us.user_id and us.user_id=? ";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, user_id);
        this.results = ps.executeQuery();
        while(results.next()){
        User us = new User();   
        us.setUser_id(this.results.getInt("user_id"));
        us.setUsername(this.results.getString("user_name"));
        us.setPassword(this.results.getString("password"));
        us.setFirst_name(this.results.getString("first_name"));
        us.setLast_name(this.results.getString("last_name"));
        us.setDate_of_birth(this.results.getString("date_of_birth"));
        us.setAvatar(this.results.getString("avatar"));
        us.setGender(this.results.getInt("gender"));
        us.setCountry(this.results.getString("country"));
        us.setHobby(this.results.getString("hobby"));
        us.setPhone(this.results.getString("phone"));
        us.setEmail(this.results.getString("email"));
        UserList.add(us);
        }
        return UserList;
       
    }
        public static void main(String[] args) throws SQLException, ClassNotFoundException, IOException {
        friend_query fri=new friend_query();
        boolean test= fri.isFriend(1, 8);
        if(test) System.out.println("Dung");
    }
       
    
    
    
    
    

}
