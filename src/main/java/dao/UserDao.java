package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connect.DBConnect;
import pojo.User;

public class UserDao {
	public boolean adduser(User u) {
	      try {
	         Connection con = DBConnect.getConnect();
	         String sql = "insert into register(name,email,password,role) values(?,?,?,?)";
	         PreparedStatement ps = con.prepareStatement(sql);
	         ps.setString(1, u.getName());
	         ps.setString(2, u.getEmail());
	         ps.setString(3, u.getPassword());
	         ps.setString(4, u.getRole());
	         int i = ps.executeUpdate();
	         if (i > 0) {
	            return true;
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }

	      return false;
	   }
	
	public String validate(String name, String password) {
	    String role = null; 
	    try {
	        Connection con = DBConnect.getConnect();
	        
	        String sql = "SELECT role FROM register WHERE name=? AND password=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, name);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();
	        
	        if (rs.next()) {
	            role = rs.getString("role"); 
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return role; 
	}

}
