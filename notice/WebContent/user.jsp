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
<body bgcolor="352413">
<center>
<table border="10px" bgcolor="aaaa01">

  <tr>
    <th>name</th>
    <th>Desciption</th>
    <th>View</th>
  </tr>
  
<%

Connection con=dbinfo.con;

String query="select nid,ntopic,ntext from meting ";

  PreparedStatement ps12=con.prepareStatement(query);
 ResultSet rs=ps12.executeQuery();

int str;
String topic="";
String txt="";
     while(rs.next())
     {str=rs.getInt(1);
    	  topic=rs.getString(2);
    	  txt=rs.getString(3);
   
%><tr>
    <td><%=topic  %></td>
    <td><%=txt %></td>
<%
if((Integer.parseInt(session.getAttribute("utype").toString())==1)||(Integer.parseInt(session.getAttribute("utype").toString())==0))

{
%>
<td>
    <a href="metsp.jsp?str=<%=str %>">view Detailes</a>
 <td>
 
 <%}
else
{
%><td>
    <a href="upmetset.jsp?str=<%=str %>">Check Detailes</a>
 <td>
 <%}}%>
 
 
 
  </tr>
</table>
</center>
</body>
</html>