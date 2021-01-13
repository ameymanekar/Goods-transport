
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud3" class="hvpm.dcpe.Student" />
<jsp:setProperty name="stud3" property="*" />
Insert Result: <%=stud3.update22()%>
<% 

System.out.println(stud3.update22());
    response.sendRedirect("ViewEntries.jsp");
  
 %>
