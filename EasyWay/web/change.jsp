<%-- 
    Document   : change
    Created on : Nov 20, 2018, 10:19:03 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="forget/img/icons/favicon.png"/>
        <title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String confirm=request.getParameter("confirm");
            
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            Statement st=conn.createStatement();
            int i=0;
            ResultSet rs1=st.executeQuery("Select username from userdetails where username='"+username+"'");
            if(rs1.next())
            {
                if(confirm.equals(password))
                {
                    String query="Update userdetails Set password='"+password+"',confirm='"+confirm+"' where username='"+username+"'";
                    i=st.executeUpdate(query);
                }
            }
            ResultSet rs2=st.executeQuery("Select username from driverdetails where username='"+username+"'");
            if(rs2.next())
            {
                if(confirm.equals(password))
                {
                    String query="Update driverdetails Set password='"+password+"',confirm='"+confirm+"' where username='"+username+"'";
                    i=st.executeUpdate(query);
                }
            }
            response.sendRedirect("login.html");
        }
        
        catch (Exception e)
        {
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
