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

Connection con=dbinfo.con;

String query="delete from meting where nid=?";

  PreparedStatement ps12=con.prepareStatement(query);

ps12.setInt(1,Integer.parseInt(request.getParameter("str")));
 int rs=ps12.executeUpdate();
response.sendRedirect("admin.html");%>
</body>
</html>