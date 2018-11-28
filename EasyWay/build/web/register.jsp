<%-- 
    Document   : register
    Created on : Nov 15, 2018, 10:08:35 PM
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
        <link rel="icon" type="image/png" href="signup/images/icons/favicon.png"/>
        <title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
      <%
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String username=request.getParameter("username");
        String gender=request.getParameter("gender");
        String phone=request.getParameter("phone");
        String city=request.getParameter("city");
        String ride=request.getParameter("ride");
        String password=request.getParameter("password");
        String confirm=request.getParameter("confirm");
        session.setAttribute("username", username);
        int i;
        try {
            String url="jdbc:mysql://localhost:3306/easyway";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","");
            String query1="insert into userdetails values('"+fname+"','"+lname+"','"+username+"','"+gender+"','"+phone+"','"+city+"','"+ride+"','"+password+"','"+confirm+"')";
            String query2="insert into driverdetails values('"+fname+"','"+lname+"','"+username+"','"+gender+"','"+phone+"','"+city+"','"+ride+"','"+password+"','"+confirm+"')";

            Statement st=conn.createStatement();
            if(confirm.equals(password))
            {
                if(ride.equals("1"))
                    i=st.executeUpdate(query1);
                else
                    i=st.executeUpdate(query2);
                if(i>0) {
                    RequestDispatcher rd = request.getRequestDispatcher("question.jsp");
                    rd.forward(request,response); }
                else {
                    out.println("Username error !"); 
                    RequestDispatcher rd = request.getRequestDispatcher("register.html");
                    rd.forward(request,response); }
            }
            else
            {
                out.println("Password error !");
                RequestDispatcher rd = request.getRequestDispatcher("register.html");
                rd.forward(request,response);
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
