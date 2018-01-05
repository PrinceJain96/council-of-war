<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

</style></head>
    <body>
    <%
      Connection con1=dbinfo.con;
int id=0;    
    String queryx="insert into user(uname,utype,upass,mob,adr) values(?,?,?,?,?)";
    System.out.print(request.getParameter("uname") );
      PreparedStatement ps1=con1.prepareStatement(queryx);
      ps1.setString(1, request.getParameter("uname") );

      if(Integer.parseInt(session.getAttribute("utype").toString())==1)
      {ps1.setInt (2,2);}
      else{
      ps1.setInt (2,0);}
      ps1.setString (3, request.getParameter("pass"));
      ps1.setString(4, request.getParameter("mob") );
      ps1.setString (5, request.getParameter("adr"));
       
     
   	  int flag = ps1.executeUpdate ();
    System.out.print("aaaa");
   %>
  
  <div align="center"><br>
  </div>
  <div align="center">
    <table width="900" border="1">
    
      <tr>
       
        
        <% 
          if(flag==1&&(Integer.parseInt(session.getAttribute("utype").toString())==0))
          {System.out.print("ssssssssss" );
          String query1="select max(uid) from user";
            ps1=con1.prepareStatement(query1);
             ResultSet rs=ps1.executeQuery();
            while(rs.next())
            {
id=rs.getInt(1);            	
System.out.print(id );
        	
    break;        	
            }
            
            %>
        <td width="424"><div align="center">Registration done!!</div>
        <div>
          <td width="424"><div align="center"> your id is </div>
          
          <%=id %>
          
   	<div align="center"><a href="login.jsp">Login Now</a></div></td>
     
     
     
       <%
         }
          else if(flag==1&&Integer.parseInt(session.getAttribute("utype").toString())==1)
          {
        	  %>
        	  
        	  <p>Initiater Added</p>
        	  <a href="admin.html">return</a>
        	  <% 
        	  
          }
        
        
        
         else
         {
         %>       
        <td width="424"><div align="center">Registration failed!!</div>
          <div align="center"><a href="signup.jsp">sign up Now</a></div></td>
        <%
        }
         %>
        
        <td width="264">&nbsp;</td>
      </tr>
     
    </table>
  </div>
  </body>
</html>
