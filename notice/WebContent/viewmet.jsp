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

<table>
  <tr>
    <th>name</th>
    <th>Desciption</th>
    <th>View</th>
  </tr>
  
<%
Connection con=dbinfo.con;

String query="select * from meting where iid=?";

  PreparedStatement ps12=con.prepareStatement(query);

ps12.setInt(1,Integer.parseInt(session.getAttribute("id").toString()));
 ResultSet rs=ps12.executeQuery();

 query="select pname,padr from place where pid=?";

String topic="";
String txt="";
String pname="";
String padd="";

     while(rs.next())
     {
    	  topic=rs.getString(2);
    	  txt=rs.getString(3);
           //inname=rs.getString(5);

           PreparedStatement ps1=con.prepareStatement(query);

          ps12.setInt(1,rs.getInt(4));
          ResultSet r=ps12.executeQuery();
pname=r.getString(1);
padd=r.getString(2);           
     
%>

<tr>
    <td><%=topic  %></td>
    <td><%=txt %></td>
   
    <td><%=pname %></td>
    <td><%=padd %></td> </tr>
</table>
 <%    	  
     }
     

%>

    <a href="initiatorpage.html">return</a>
 
 
</body>
</html>