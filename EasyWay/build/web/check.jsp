<%-- 
    Document   : check
    Created on : Nov 27, 2018, 3:33:58 AM
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
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="question/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="question/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="question/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="question/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="question/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="question/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="question/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="question/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="question/css/util.css">
	<link rel="stylesheet" type="text/css" href="question/css/main.css">
    </head>
    <body>
        <%
            String username=(String)session.getAttribute("username");
            session.setAttribute("username", username);
            String url="jdbc:mysql://localhost:3306/easyway";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","");
            String query="select ques1,ques2,ques3 from secret where username='"+username+"'";
            Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery(query);
        if(rs.next())
        {
        %>
    <div class="limiter">
		<div class="container-login100" style="background-image: url('question/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" method="post" action="checkans.jsp">
					<span class="login100-form-title p-b-49">
						<center><h4>EasyWay - Drive to earn money or ride easy now</h4><br>Secret Security</center>
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Question is reauired">
                                            <span class="label-input100">Secret Question 1</span><br>
                                                <select name="ques1" required>
                                                <option selected="selected"><%=rs.getString("ques1")%></option>
                                                </select>
					</div>
                                    
                                    <div class="wrap-input100 validate-input" data-validate="Answer is required">
						<span class="label-input100">Secret Answer 1</span>
						<input class="input100" type="text" name="ans1" placeholder="Type your answer">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                                    </div><br><br>
                                    
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Question is reauired">
                                        <span class="label-input100">Secret Question 2</span><br>
                                                <select name="ques2" required>
                                                <option selected="selected"><%=rs.getString("ques2")%></option>
                                                </select>
                                    </div>
                                    
                                    <div class="wrap-input100 validate-input" data-validate="Answer is required">
						<span class="label-input100">Secret Answer 2</span>
						<input class="input100" type="text" name="ans2" placeholder="Type your answer">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                                    </div><br><br>
                                    
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Question is reauired">
                                        <span class="label-input100">Secret Question 3</span><br>
                                        <select name="ques3" required>
                                                <option selected="selected"><%=rs.getString("ques3")%></option>
                                        </select>
                                    </div>

                                    <div class="wrap-input100 validate-input" data-validate="Answer is required">
						<span class="label-input100">Secret Answer 3</span>
						<input class="input100" type="text" name="ans3" placeholder="Type your answer">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                                    </div><br><br>
                                    
                                    <% }
                                            st.close();
                                    %>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Submit
							</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<script src="question/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="question/vendor/animsition/js/animsition.min.js"></script>
	<script src="question/vendor/bootstrap/js/popper.js"></script>
	<script src="question/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="quetion/vendor/select2/select2.min.js"></script>
	<script src="question/vendor/daterangepicker/moment.min.js"></script>
	<script src="question/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="question/vendor/countdowntime/countdowntime.js"></script>
	<script src="question/js/main.js"></script> 
    </body>
</html>
