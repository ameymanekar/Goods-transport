<%-- 
    Document   : update2
    Created on : Feb 19, 2018, 3:59:22 PM
    Author     : Asus
--%>

<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>

body {
	padding: 0;
	margin: 0;
	font-family: 'Alegreya Sans', sans-serif;

}
body a {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
	text-decoration: none;
}
body a:hover {
	text-decoration: none;
}
body a:focus, a:hover {
	text-decoration: none;
}
input[type="button"], input[type="submit"] {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	font-family: 'Alegreya Sans', sans-serif;
}
p {
	margin: 0;
}
ul {
	margin: 0;
	padding: 0;
}
li {
	list-style-type:none;
		
}
label {
	margin: 0;
}
a:focus, a:hover {
	text-decoration: none;
	outline: none;
}
/*-- //Reset-Code --*/

.w3ls-banner {
    background: url(images/bg.jpg) no-repeat;
	background-size: cover;
    min-height: 100vh;
    color: white;
	background-position:center;
	padding-top: 30px;	
}
.heading {
    text-align: center;
	    margin-bottom: 25px;
		letter-spacing: 1px;
}
.heading h1 {
    margin-bottom: 25px;
    text-transform: uppercase;
    font-weight: 500;
	font-size: 50px;
}
.heading h2 {
    font-weight: 400;
}
.heading p {
    font-size: 16px;
    margin-top: 20px;
}
.container {
	width: 43%;
    margin: auto;
    padding: 30px 30px 20px;
    box-sizing: border-box;
    background-color: rgba(0, 0, 0, 0.5);
}

label.form-label {
    display: inline-block;
    width: 27%;
	font-weight: 400;
	letter-spacing: 1px;
	vertical-align: top;
}
.form-input {
    display: inline-block;
    width: 72%;
}
.name .form-input {
    display: inline-block;
    width: 72%;
}
ul.field-list li {
    margin: 15px 0px;
}
select {
    width: 98.4%;
    padding: 12px 10px;
    color: #666;
    border: none;
    font-size: 15px;
	font-family: 'Alegreya Sans', sans-serif;
    background-color: #fff;
}
input[type="text"]:focus, input[type="email"]:focus,select:focus {
    outline: none;
}
.dob select {
    width: 32.4%;
}

input[type="text"],input[type="email"] {
 /*   margin: 15px 0px; */
    padding: 12px 10px;
	box-sizing: border-box;
	background-color: #fff;
	font-size: 15px;
	border: none;
	width: 98.6%;
	color: #333;
	font-family: 'Alegreya Sans', sans-serif;
}
span.form-sub-label input[type="text"] {
    margin: 0px 0px 15px 0;
	width: 49%;
}

span.last input[type="text"] {
    margin: 0px 0px 0px 0;
}
.name span.form-sub-label input[type="text"],.dob span.form-sub-label input[type="text"] {
    margin-bottom: 0;
}
span.form-required {
    color: #fff;
}

label.form-label1 {
    display: inline-block;
    margin: 15px 0px;
	letter-spacing: 1px;
}
label.type-of-test {
    display: inline-block;
    width: 150px;
    margin-bottom: 10px;
    margin-left: 10px;
	letter-spacing: 1px;
	font-weight: 100;
	    font-size: 14px;
}
textarea {
    width: 98%;
	background-color: rgba(255, 255, 255, 0.63);
}
.submit_btn{
	text-align: right;
    margin-right: 10px;
}
.cancel_btn{
	text-align: right;
    margin-right: 10px;
}
input[type="submit"] {
	width: 50%;
    padding: 10px 40px;
    margin-top: 5px;
	font-size: 16px;
	background-color: #007cc0;
    border: 1px solid #007cc0;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 1px;
	outline: 0;
	cursor: pointer;
	font-family: 'Alegreya Sans', sans-serif;
}
input[type="submit"]:hover {
    background-color: #ffc168;
    border: 1px solid #ffc168;
    color: #000;
}
input[type="reset"] {
	width: 72.5%;
    padding: 10px 40px;
    margin-top: 5px;
	font-size: 16px;
	background-color: #007cc0;
    border: 1px solid #007cc0;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 1px;
	outline: 0;
	cursor: pointer;
	font-family: 'Alegreya Sans', sans-serif;
}
input[type="reset"]:hover {
    background-color: #ffc168;
    border: 1px solid #ffc168;
    color: #000;
}
input.year {
	width: 31% !important;
}
input[type="checkbox"] {
    vertical-align: middle;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #444;
}
::-moz-placeholder { /* Firefox 19+ */
  color: #444;
}
:-ms-input-placeholder { /* IE 10+ */
  color: #444;
}
:-moz-placeholder { /* Firefox 18- */
  color: #444;
}
.copyright p {
    text-align: center;
    padding: 15px 5px;
	letter-spacing: 1px;
    font-size: 16px;
}
.copyright a {
    color: #fff;
}
.copyright a:hover {
    color: #ffc168;
}
/* respoinsive */

@media screen and (max-width: 1366px){
	.container {
		width: 45%;
	}
	.submit_btn {
		margin-right: 8px;
	}
	input[type="submit"] {
		width: 72%;
	}
}
@media screen and (max-width: 1280px){
	.heading h1 {
		font-size: 45px;
	}
}
@media screen and (max-width: 1080px){
	.container {
		width: 52%;
	}
}
@media screen and (max-width: 991px){
	.container {
		width: 55%;
	}
	.heading h1 {
		font-size: 42px;
	}
}
@media screen and (max-width: 900px){
	.container {
		width: 58%;
	}
	.heading h1 {
		font-size: 40px;
	}
}
@media screen and (max-width: 800px){
	.container {
		width: 65%;
	}
	.heading h1 {
		font-size: 38px;
	}
}
@media screen and (max-width: 768px){
	.container {
		width: 70%;
	}
	.heading h1 {
		font-size: 36px;
	}
}
@media screen and (max-width: 736px){
	.container {
		width: 80%;
	}
}
@media screen and (max-width: 640px){
	.container {
		width: 85%;
	}
}
@media screen and (max-width: 568px){
	.container {
		width: 90%;
	}
	label.type-of-test {
		width: 40%;
	}
	label.form-sub-label1 {
		position: absolute;
		bottom: -28px;
		left: 5px;
		font-size: 13px;
		display: block;
	}
}

@media screen and (max-width: 480px){
	.heading h1 {
		font-size: 33px;
	}
	.container {
		width: 95%;
		padding: 17px 10px 20px;
	}
	label.form-label {
		font-size: 15px;
	}
	.heading h2 {
		font-size: 1.3em;
	}
	.copyright p {
		line-height: 26px;
	}
}
@media screen and (max-width: 414px){
	.form-input {
		width: 100%;
	}
	label.form-label {
	width: 100%;
		margin-bottom: 7px;
	}
	input.year {
		width: 41% !important;
	}
	label.form-sub-label1 {
		bottom: -22px;
		left: 4px;
		font-size: 13px;
		letter-spacing: 1px;
	}
	.heading h2 {
		 font-size: 22px;
	}
	.dob select {
		width: 32%;
	}
	input[type="email"] {
		 width: 99%;
	}
	textarea {
		width: 97%;
	}
	input[type="text"], input[type="email"],select {
		padding: 10px 10px;
	}
	.name .form-input {
		width: 100%;
	}
	input[type="submit"] {
		width: 100%;
	}
	.submit_btn {
		margin-right: 4px;
	}
	select {
		padding-right: 0;
	}
	.heading h1 {
		font-size: 29px;
	}
	.heading h2 {
		font-size: 20px;
	}
	.heading p {
		font-size: 15px;
		margin-top: 10px;
	}
}

@media screen and (max-width: 384px){
	
	.heading h1 {
		margin-bottom: 20px;
		font-size: 30px;
	}
	.heading h1 {
		font-size: 28px;
	}
}

@media screen and (max-width: 375px){
	
	label.type-of-test {
		width: 40%;
		margin-left: 5px;
	}
	label.form-sub-label1 {
		bottom: -25px;
	}
	input.year {
		width: 39% !important;
	}
	.heading h2 {
		font-size: 20px;
	}
	.heading p {
		font-size: 15px;
		margin-top: 15px;
	}
	.heading h1 {
		font-size: 26px;
	}
	.copyright p {
		font-size: 15px;
	}

}

@media screen and (max-width: 320px){
	.heading h1 {
		margin-bottom: 20px;
		font-size: 24px;
	}
	.heading h2 {
		font-size: 17px;
	}
	.heading p {
		font-size: 13px;
		margin-top: 15px;
	}
	span.form-sub-label input[type="text"] {
		width: 99%;
	}
		span.last input[type="text"] {
		margin: 0px 0px 15px 0;
	}
	label.type-of-test {
		width: 36%;
		margin-left: 7px;
		font-size: 14px;
	}
	input[type="text"] {
		width: 99%;
	}
	label.form-label1 {
		margin: 8px 0px;
	}
	.copyright p {
		font-size: 14px;
	}
	.name span.form-sub-label input[type="text"]:nth-child(1) {
		margin-bottom: 10px;
	}
	ul.field-list li {
		margin: 10px 0px;
	}
	input[type="submit"] {
		font-size: 15px;
		margin-top: 0px;
	}
}


/* //respoinsive */
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "hvpm";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from vehicle where sid="+sid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Page</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>Book Vehicle</h1>
	</div>
		<div class="container">
			<div class="agile-form">
		
								
				<form action="vbooking.jsp">
				<ul class="field-list">
						<li class="name">


							<label class="form-label">Vehicle Name <span class="form-required"> * :</span></label>
							<div class="form-input">
								<%=resultSet.getString("name") %>
									<input type="hidden"  value="<%=resultSet.getString("name") %>" pattern="[A-Z a-z]+" name="name" placeholder="vehicle name" style="text-transform:uppercase" required>
									<input type="hidden"  value="<%=(String)session.getAttribute("userid")%>" pattern="[A-Z a-z]+" name="email" placeholder="vehicle name" style="text-transform:uppercase" required>
							
								
										<input type="hidden" value="<%=resultSet.getString("vtype") %>"  name="vtype" placeholder="Vehicle Type" required>
								<input type="hidden" value="<%=resultSet.getString("vno") %>"  name="vno" placeholder="Vehicle Number"  required >
							<input type="hidden" value="<%=resultSet.getString("vrent") %>"  name="vrent" placeholder="Vehicle Rent" required>
								
							</div>
						</li>											
                       
						<li> 
							<label class="form-label"> Vehicle Type <span class="form-required"> * :</span></label>
							<div class="form-input">
							<%=resultSet.getString("vtype") %>
								
							</div>
						</li>
						
						<li> 
							<label class="form-label"> Vehicle Number <span class="form-required"> * :</span></label>
							<div class="form-input">
							<%=resultSet.getString("vno") %>
									</div>
						</li>
						
						
                                                <li class="name">
							<label class="form-label"> Vehicle Rent/ per Day<span class="form-required"> * :</span></label>
							<div class="form-input">
								<%=resultSet.getString("vrent") %> RS.
									
							</div>

						</li>
						
						<li class="name">
							<label class="form-label"> Source and Destination<span class="form-required"> * </span></label>
							<div class="form-input">
					<input type="text"   name="source" placeholder="Source" style="width: 50%;" required>  
					
					<input type="text"   name="destination" placeholder="Destination" style="width: 50%;" required>
							  
							</div>

						</li>
						<li class="name">
							<label class="form-label"> Distance in km <span class="form-required"> * </span></label>
							<div class="form-input">
					<input type="text"   name="dkm" pattern="[1,2,3,4,5,6,7,8,9,0]{3,2}" placeholder="Distance"minlength="2" maxlength="3" style="width: 50%;" required>  

							</div>

						</li>
						
						<li class="name">
							<label class="form-label"> Booking Days <span class="form-required"> * </span></label>
							<div class="form-input">
					<input type="text"   name="bookd" pattern="[1,2,3,4,5,6,7,8,9,0]{2,1}" "minlength="1" maxlength="2" placeholder="Booking Days" style="width: 50%;" required>  

							</div>

						</li>
						
						
						<li class="name">
							<label class="form-label"> Goods Name<span class="form-required"> * </span></label>
							<div class="form-input">
					<input type="text"   name="gname" placeholder="Goods Name" style="width: 50%;" required>  
					
								  
							</div>

						</li>
					</ul>
							
			
				
									
                                    
					<div class="submit_btn">
						<input type="submit" class="pure-button pure-button-primary" value="Submit">
                                               </div>
    
</form>
			
			</div>
		</div>
		
		
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </body>
</html>
