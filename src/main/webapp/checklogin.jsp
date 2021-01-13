
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<%
    String uid=request.getParameter("userid");
    String pwd=request.getParameter("pwd");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
    
    String msql="select * from snuser where email=? and pass=?";
    
    PreparedStatement smt=con.prepareStatement(msql);
    smt.setString(1, uid);
    smt.setString(2, pwd);
    ResultSet rs=smt.executeQuery();
    if(rs.next())
    {
        session.setAttribute("userid",uid);
        response.sendRedirect("main.jsp");
    }
   else
        response.sendRedirect("index.jsp?login2=0");
    
%>