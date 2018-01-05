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

String query="select * from meting where nid=?";

  PreparedStatement ps12=con.prepareStatement(query);
int str=Integer.parseInt(request.getParameter("str"));
ps12.setInt(1,str);
 ResultSet rs=ps12.executeQuery();

 query="select pname,padr,charge from place where pid=?";

String topic="";
String txt="";
String pname="";
String padd="";
int cha=0;
     while(rs.next())
     {
    	  topic=rs.getString(2);
    	  txt=rs.getString(3);

           PreparedStatement ps1=con.prepareStatement(query);

          ps12.setInt(1,rs.getInt(4));
          ResultSet r=ps12.executeQuery();
pname=r.getString(1);
padd=r.getString(2);           
     cha=r.getInt(3);
     }
%>




<form action="upmetget.jsp?str=<%=str %>" target="_blank" method="POST">
   Name:<br>
  <input type="text" name="name" value="<%=topic %>">
  <br>
  Description:<br>
  <input type="text" name="txt" value="<%=txt %>">
  <br>
  
 place:<br>
  <input type="text" name="pname" value="<%=pname%>" readonly="readonly">
  <br>
  
  place adress:<br>
  <input type="text" name="padd" value="<%=padd%>" readonly="readonly">
  <br>
  
  
  charges:<br>
  <input type="text" name="cha" value="<%=cha%>" readonly="readonly">
  <br>
  
  <br>
  <input type="submit" value="Submit">
</form>


</body>
</html>