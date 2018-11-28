<%-- 
    Document   : checkans
    Created on : Nov 27, 2018, 3:50:56 AM
    Author     : DELL
--%>

%@page contentType="text/html" pageEncoding="UTF-8"%>
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
         try {
             String username=(String)session.getAttribute("username");
             String ans1=request.getParameter("ans1");
             String ans2=request.getParameter("ans2");
             String ans3=request.getParameter("ans3");
         String url="jdbc:mysql://localhost:3306/easyway";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","");
            String query="select * from secret where username='"+username+"' AND ans1='"+ans1+"'AND ans2='"+ans2+"'AND ans3='"+ans3+"'";
            out.println(query);
            Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery(query);
        if(rs.next())
        {
            response.sendRedirect("forget.html");
        }
        else
        {
            response.sendRedirect("check.html");
        }
        }
catch (Exception e)
{
    out.println(e.getMessage());
}
        %>
    </body>
</html>
