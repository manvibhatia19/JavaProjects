<%-- 
    Document   : rides
    Created on : Nov 20, 2018, 11:34:37 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="main/img/icons/favicon.png"/>

        <title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
        <%
        String ride=request.getParameter("ride");
        String pickup=request.getParameter("pickup");
        String pdate=request.getParameter("pdate");
        String dropoff=request.getParameter("dropoff");
        String ddate=request.getParameter("ddate");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String username=(String)session.getAttribute("username");
        
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            Statement st=conn.createStatement();
            String query="Select username from userdetails where username='"+username+"'";
            ResultSet rs=st.executeQuery(query);
            String query1="insert into rides values('"+ride+"','"+pickup+"','"+pdate+"','"+dropoff+"','"+ddate+"','"+name+"','"+email+"','"+phone+"','"+username+"')";
            if(rs.next())
            {
            int i=st.executeUpdate(query1);
                if(i>0) {
                response.sendRedirect("users.jsp");
                }
            }
            else
            {
                out.println("Invalid Details !"); 
                response.sendRedirect("logout.jsp");
            }
       st.close();
        }
        
        catch (Exception e)
        {
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
