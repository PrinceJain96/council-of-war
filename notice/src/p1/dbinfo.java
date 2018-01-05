package p1;


import java.sql.*;
public class dbinfo
{
  public static Connection con;
  static
  {
   try
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   con=DriverManager.getConnection("jdbc:mysql://localhost:3308/notice","root","rat");
  
   }
   catch(Exception e)
   {
   e.printStackTrace();
   }
  }
}