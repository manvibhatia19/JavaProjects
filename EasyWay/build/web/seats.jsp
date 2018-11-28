<%-- 
    Document   : seats
    Created on : Nov 27, 2018, 11:12:47 AM
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
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String pickup=request.getParameter("pickup");
        String dropoff=request.getParameter("dropoff");
        String seats=request.getParameter("seats");
        String rdate=request.getParameter("rdate");
        String rtime=request.getParameter("rtime");
        String username=(String)session.getAttribute("username");
        session.setAttribute("pickup", pickup);
        session.setAttribute("dropoff", dropoff);
        session.setAttribute("seats", seats);
        session.setAttribute("rdate", rdate);
        session.setAttribute("rtime", rtime);
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            Statement st=conn.createStatement();
            String query="Select username from userdetails where username='"+username+"'";
            ResultSet rs=st.executeQuery(query);
            String query1="insert into seats values('"+name+"','"+phone+"','"+pickup+"','"+dropoff+"','"+seats+"','"+rdate+"','"+rtime+"','"+username+"')";
            if(rs.next())
            {
            int i=st.executeUpdate(query1);
                if(i>0) {
                response.sendRedirect("available.jsp");
                }
            }
            else
            {
                out.println("Invalid Details !"); 
                response.sendRedirect("users.jsp");
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
