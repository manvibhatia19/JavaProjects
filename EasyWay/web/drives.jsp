<%-- 
    Document   : drives
    Created on : Nov 28, 2018, 12:35:49 AM
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
        String halt1=request.getParameter("halt1");
        String halt2=request.getParameter("halt2");
        String seats=request.getParameter("seats");
        String ddate=request.getParameter("ddate");
        String dtime=request.getParameter("dtime");
        String username=(String)session.getAttribute("username");
        session.setAttribute("pickup", pickup);
        session.setAttribute("dropoff", dropoff);
        session.setAttribute("halt1", halt1);
        session.setAttribute("halt2", halt2);
        session.setAttribute("seats", seats);
        session.setAttribute("ddate", ddate);
        session.setAttribute("dtime", dtime);
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            Statement st=conn.createStatement();
            String query="Select username from driverdetails where username='"+username+"'";
            ResultSet rs=st.executeQuery(query);
            String query1="insert into drives values('"+name+"','"+phone+"','"+pickup+"','"+dropoff+"','"+halt1+"','"+halt2+"','"+seats+"','"+ddate+"','"+dtime+"','"+username+"')";
            if(rs.next())
            {
            int i=st.executeUpdate(query1);
                if(i>0) {
                response.sendRedirect("history.jsp");
                }
            }
            else
            {
                out.println("Invalid Details !"); 
                response.sendRedirect("drivers.jsp");
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

