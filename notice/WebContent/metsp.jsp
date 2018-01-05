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
<body bgcolor="224466">
<%

Connection con=dbinfo.con;

String query="select * from meting where nid=?";

  PreparedStatement ps12=con.prepareStatement(query);

ps12.setInt(1,Integer.parseInt(request.getParameter("str")));
 ResultSet rs=ps12.executeQuery();


String topic="";
String txt="";
String pname="";
String padd="";
String inname="";
int i=1;
     while(rs.next())
     {
    	  topic=rs.getString(2);
    	  txt=rs.getString(3);
           inname=rs.getString(5);
            i=rs.getInt(4);     }
//con.close();
  //   Connection c=dbinfo.con;
String qu1="select pname,padr from place where pid=?";

     PreparedStatement ps1=con.prepareStatement(qu1);

    ps12.setInt(1,i);
    ResultSet r=ps12.executeQuery();
    while(r.next()){
    pname=r.getString(1);
padd=r.getString(2);           
    }

%>

Topic
<p></p>
<strong>
<%=topic %>
</strong>
Description
<p></p>
<%=txt %>
Issues id<%=inname %>
<strong>
Venue

</strong>
<p></p>
<%=pname %>
<p></p>
<%=padd %>





<%
if(Integer.parseInt(session.getAttribute("utype").toString())==1)
{
%>


<a href="del.jsp?nid=<%=Integer.parseInt(request.getParameter("str").toString())%>">Delete</a>
<a href="admin.html">return</a>
  <%
} else{
  
  %>
 
 
 
 <a href="user.jsp">return</a>
 
 <%    	  
     }
     
%>
</body>
</html>