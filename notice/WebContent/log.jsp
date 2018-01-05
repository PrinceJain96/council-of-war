<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.dbinfo"%>
<%@page import="java.sql.Connection"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	 <%System.out.print(request.getParameter("uid"));
	
	 System.out.print(request.getParameter("pass"));
	 
	 
	 
	 Connection con=dbinfo.con;
	    
	    String query="select * from user where uid=? ";
	    
	      PreparedStatement ps12=con.prepareStatement(query);
	    
	 ps12.setString(1,request.getParameter("uid"));
	 //ps12.setString(2,request.getParameter("upass"));

	      ResultSet rs=ps12.executeQuery();
	      System.out.print("aaaa");
	  	
	      int flag=0 ;
	      int usertype=0;
	      String urll=null;
	      if(rs==null){
	       urll="addplace.html";}
	      else
	    	  {while(rs.next())
	      {
	         flag=1;
	         usertype=rs.getInt(3);
	         break;	  
	        
	      }}
	      System.out.print(usertype+"ssssssss"+flag);
	      
	      if(flag==1 && usertype==1)
	      {session.setAttribute("utype", 1);
	      urll="admin.html";
	      }
	      else if(flag==1 &&  (usertype==2))
	      {session.setAttribute("utype", 2);
	      session.setAttribute("id", request.getParameter("uid"));
urll="initiatorpage.html";
	      }
	      else if(flag==1 &&  (usertype==0))
	      {
	    	  session.setAttribute("utype", 0);
		      session.setAttribute("id", request.getParameter("username"));

		      urll="user.jsp";
	      }
	      else
	      {
	    	  urll="error.html";
	      }
	      
	      
	      response.sendRedirect(urll);
	    	
	      
	 %></body>
</html>