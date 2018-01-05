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
    String query="insert into meting(ntopic,ntext,iid) values(?,?,?)";
  
      PreparedStatement ps1=con1.prepareStatement(query);
      ps1.setString(1, request.getParameter("topic") );

      
      
    //  Date d=
      
      //ps1.setDate(4,);
      ps1.setString (2, request.getParameter("txt"));
      ps1.setString(3, session.getAttribute("id").toString() );
      
       
     
   	  int flag = ps1.executeUpdate ();
    response.sendRedirect("selpla.jsp");
   %>
  
</body>
</html>