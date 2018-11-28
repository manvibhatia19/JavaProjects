<%-- 
    Document   : validate
    Created on : Nov 15, 2018, 5:48:44 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="login/images/icons/favicon.png"/>
        <title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
    <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        session.setAttribute("username", username);
        String url="jdbc:mysql://localhost:3306/easyway";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","");
        String query1="select username,password from userdetails where username='"+username+"' AND password='"+password+"'";
        String query2="select username,password from driverdetails where username='"+username+"' AND password='"+password+"'";
        Statement st=conn.createStatement();
        ResultSet rs1=st.executeQuery(query1);
        if(rs1.next())
        {
            out.println("<div align='right' style='background-color:black'><h3>Welcome '"+username+"'</h3></div>");
            response.sendRedirect("users.jsp");
            }
        else
        { ResultSet rs2=st.executeQuery(query2);
                if(rs2.next())
                {
                    out.println("<div align='right' style='background-color:black'><h3>Welcome '"+username+"'</h3></div>");
                    response.sendRedirect("drivers.jsp");
                }
                else
                {
                    out.println("Username & Password error.");                
          response.sendRedirect("login.html");
                }
        }
        st.close();
    %>
    </body>
</html>
