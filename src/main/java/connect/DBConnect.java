package connect;


import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
   public DBConnect() {
   }

   public static Connection getConnect() {
      Connection con = null;

      try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         String url = "jdbc:mysql://localhost:3306/event_ease";
         con = DriverManager.getConnection(url, "root", "");
      } catch (Exception var2) {
         var2.printStackTrace();
      }

      return con;
   }
}
