<%-- 
    Document   : logout
    Created on : Nov 21, 2018, 11:35:30 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="main/img/icons/favicon.png"/>
	<title>EasyWay - Drive to earn money or ride easy now</title>
    </head>
    <body>
        <%
            if(session != null)
            {
                session.invalidate();
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
