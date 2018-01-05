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
int id=2;
 id=Integer.parseInt("122");
System.out.print(id);
    String query="insert into place(pname,padr,charge) values(?,?,?)";
   
      PreparedStatement ps1=con1.prepareStatement(query);
      ps1.setString(1, request.getParameter("placename") );
      ps1.setString (2, request.getParameter("location"));
      ps1.setInt (3,id);
      int flag = ps1.executeUpdate ();
    response.sendRedirect("admin.html");
   %>
   
</body>
</html>