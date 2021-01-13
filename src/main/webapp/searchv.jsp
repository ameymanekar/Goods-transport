
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
   body {
       background-color: #offwhite;
       align="center"
}  
table {
    border-collapse: collapse;
    width: 100%;
    align="center"
    
}

th, td {
    text-align: left;
    padding: 6px;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
    align="center"
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
    align="center"
}
 body
{
    counter-reset: Serial;           /* Set the Serial counter to 0 */
}
table
{
    align="center"
}

tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: " " counter(Serial); /* Display the counter */
  align="center"
}

</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form>
               <h3> Name Vehicle : <input type="text" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
            <hr>
<center><h1>Vehicles</h1>    </center>
            </form>
            <div style="align:center;">
             <center>  <table style="width:70%"  border="1"  >
             <tr>
                   <th>Sr. No.</th>
                    <th>Vehicle Name</th>
                      <th>Vehicle Type</th>
                       <th>Vehicle Number</th>
                       <th> Vehicle Rent/ per Day</th>
                       <th>Book</th>
                   
                </tr>
               
                <%
                Student stud=new Student();
                Vector vlist=stud.list(search);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr> 
                     <td></td>  
                    <td><%=s.getName()%></td>  
                    <td><%=s.getVtype()%></td>   
                    <td><%=s.getVno()%></td>
                     <td><%=s.getVrent()%> RS.</td>  
                      <td><a href='book.jsp?sid=<%=s.getSid()%>' ><img src="images/book.png" height="30px"></a></td>
                        
                   </tr>
                <%  
            }
             %>
            </table></center>
            </div>
          
           
          
    </body>
</html>

