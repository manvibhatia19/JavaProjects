<%-- 
    Document   : answer
    Created on : Nov 27, 2018, 3:22:23 AM
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
        <link rel="icon" type="image/png" href="question/img/icons/favicon.png"/>
        <title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
        <%
        String ques1=request.getParameter("ques1");
        String ans1=request.getParameter("ans1");
        String ques2=request.getParameter("ques2");
        String ans2=request.getParameter("ans2");
        String ques3=request.getParameter("ques3");
        String ans3=request.getParameter("ans3");
        String username=(String)session.getAttribute("username");
        int i;
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            String query="insert into secret values('"+ques1+"','"+ans1+"','"+ques2+"','"+ans2+"','"+ques3+"','"+ans3+"','"+username+"')";
            Statement st=conn.createStatement();
            i=st.executeUpdate(query);
            if(i>0) {
                    RequestDispatcher rd = request.getRequestDispatcher("login.html");
                    rd.forward(request,response); }
                else {
                    out.println("Question error !"); 
                    RequestDispatcher rd = request.getRequestDispatcher("question.jsp");
                    rd.forward(request,response); }
        }
        catch (Exception e)
        {
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
