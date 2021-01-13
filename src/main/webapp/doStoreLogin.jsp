
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="stud3" class="hvpm.dcpe.Student" />
<jsp:setProperty name="stud3" property="*" />


   <%
    String uid=request.getParameter("email");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
    
    String msql="select * from snuser where email=?";
    
    PreparedStatement smt=con.prepareStatement(msql);
    smt.setString(1, uid);
    ResultSet rs=smt.executeQuery();
    if(rs.next())
    {
        response.sendRedirect("index.jsp?login=0");    
    }
   else
   {
	   	stud3.insert();
	    response.sendRedirect("index.jsp");
      
   }
%>