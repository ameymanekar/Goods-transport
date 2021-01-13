
<!DOCTYPE HTML>
<html>
<head>
<title>Login </title>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style23.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
    <style>
		body{
background: url(images/banner.jpg)no-repeat;
background-attachment: fixed;
    background-position: center;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
padding:0;
margin:0; 
font-family: 'Roboto Condensed', sans-serif;
 font-size: 100%;
}  
	
		.errmsg{font-family: arial;
    font-size: 20pt;
    color: #ffffff;
    text-align: center;}

     

                </style>
                <%
 String loginmsg="";
 if(request.getParameter("login")!=null)
    loginmsg="Invalid UserID/Pwd";
 %>
<!--header start here-->
<div class="header">
		<div class="header-main">
		       <h1>ADMIN Login </h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
						
					 <form action="admin.jsp" >
						<input type="text"  value="User name" name="userid" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}"/>
					<input type="password"  value="Password" name="pwd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
						<div class="remember">
			             
						 <div class="forgot">
						 	
						 </div>
						<div class="clear"> </div>
					  </div>
					   
						<input type="submit" value="Login">
                                                <div  class="errmsg">  <%=loginmsg%>
					</div>
					</form>	
                                            
					
					
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
<!--header end here-->

<!--footer end here-->
</body>
</html>