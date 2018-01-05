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
<body bgcolor="236422">

<table border="5px" bgcolor="235453">
  <tr>
    <th>Place Name</th>
    <th>Place Adress</th>
    <th>Charges</th>
  </tr>
  
<%

Connection con=dbinfo.con;

String query="select pname,padr,charge,pid from place";

  PreparedStatement ps12=con.prepareStatement(query);
 ResultSet rs=ps12.executeQuery();

int str,id;
String pname="";
String padr="";

     while(rs.next())
     {str=rs.getInt(3);
    	id=rs.getInt(4);  
     pname=rs.getString(2);
    	  padr=rs.getString(3);
   
%><tr>
    <td><%=pname  %></td>
    <td><%=padr %></td>
    <td><%=str %></td>
<td>
    <a href="book.jsp?pid=<%=id%>">Finalize</a>
 </td>
  </tr>

 <%    	  
     }
     

%>
</table>
</body>

</html>