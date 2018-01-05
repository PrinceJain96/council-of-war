<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  Connection con1=dbinfo.con;
int id=0;    
    String query="update meting set ntopic=?, ntext=? where nid=?";
  
      PreparedStatement ps1=con1.prepareStatement(query);
      ps1.setString(1, request.getParameter("name") );
      ps1.setString(2, request.getParameter("txt") );

      ps1.setInt(3, Integer.parseInt(request.getParameter("str")) );
      
      response.sendRedirect("initiatorpage.html");
  %>    

</body>
</html>