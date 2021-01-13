<%-- 
    Document   : links.jsp
    Created on : Dec 18, 2017, 8:49:42 PM
    Author     : CCIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .page
{
    background-image: url('images/ff.jpg');
    background-attachment: fixed;
}


.errmsg
{
     font-family: arial;
    font-size: 20pt;
    color:red;
    text-align: center;
}
.enjoy-css5 {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 23px/1 "Times New Roman", Times, serif;
  color: rgba(255,255,255,1);
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 4px 4px rgba(255,255,255,0.46) ;
}
 .enjoy-css {
  display: inline-block;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  padding: 4px 4px 4px 4px;
  border: 1px solid rgba(22,22,22,0.66);
  -webkit-border-radius: 3px;
  border-radius: 3px;
  font: normal 14px/normal "Times New Roman", Times, serif;
  color: rgba(255, 255, 255, 0.9);
  -o-text-overflow: clip;
  text-overflow: clip;
  background: url("images/99.png");
  background-position: 50% 50%;
  -webkit-background-origin: padding-box;
  background-origin: padding-box;
  -webkit-background-clip: border-box;
  background-clip: border-box;
  -webkit-background-size: auto auto;
  background-size: auto auto;
  -webkit-box-shadow: 2px 2px 5px 1px rgba(201,201,201,1) ;
  box-shadow: 2px 2px 8px 2px rgba(201,201,201,1) ;
 
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}
.enjoy-css2 {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 76px/1 "Courier New", Courier, monospace;
  color: #ffffff;
  text-align: center;
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 0 9px rgba(0,2,5,0.9) ;
  -webkit-transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
  transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
}

        </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="page" >
   
   
        <img src="images/ggg.jpg" width="100%" height="100%" >
        <center>
       <div class="enjoy-css5"></div> 
     
        </center>
        <table cellspacing="15px" >
         
        	<form action="home.jsp" target="f2"> 
     		 <tr><td class="mbar"> <input type="submit"class="enjoy-css" value="     Home         "/></td></tr></form>
     		
     		<form action="searchv.jsp" target="f2">
     		 <tr><td class="mbar"> <input type="submit"class="enjoy-css" value="Search Vehicle"/></td></tr></form>
        	
        	
        	
        	<form action="index.jsp" target="_top">
     		 <tr><td class="mbar"> <input type="submit"class="enjoy-css" value="     Logout        "/></td></tr></form>
        	
        	
          
        </table>
   
    </body>
</html>
