package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import connect.DBConnect;
import pojo.Event;
import pojo.User;

public class EventDao {
	public boolean addEvent(Event e) {
	      try {
	         Connection con = DBConnect.getConnect();
	         String sql = "insert into events(name,date,description,price,location,category,organizer) values(?,?,?,?,?,?,?)";
	         PreparedStatement ps = con.prepareStatement(sql);
	         
	         ps.setString(1, e.getName());
	         ps.setString(2, e.getDate());
	         ps.setString(3, e.getDescription());
	         ps.setString(4, e.getPrice());
	         ps.setString(5, e.getLocation());
	         ps.setString(6, e.getCategory());
	         ps.setString(7, e.getOrganizer());
	         
	         int i = ps.executeUpdate();
	         if (i > 0) {
	            return true;
	         }
	      } catch (Exception x) {
	         x.printStackTrace();
	      }

	      return false;
	   }
	
	public ArrayList<Event> getAllEvents() {
	      ArrayList<Event> el = new ArrayList();

	      try {
	         Connection con = DBConnect.getConnect();
	         String sql = "select * from events";
	         PreparedStatement ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery();

	         while(rs.next()) {
	            Event e = new Event();
	            e.setName(rs.getString("name"));
	            e.setDate(rs.getString("date"));
	            e.setDescription(rs.getString("description"));
	            e.setPrice(rs.getString("price"));
	            e.setLocation(rs.getString("location"));
	            e.setCategory(rs.getString("category"));
	            e.setOrganizer(rs.getString("organizer"));
	            el.add(e);
	         }
	      } catch (Exception x) {
	         x.printStackTrace();
	      }

	      return el;
	   }

}
