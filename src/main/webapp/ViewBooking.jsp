
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
                     <th>User Email</th>
                      <th>Vehicle Type</th>
                       <th>Vehicle Number</th>
                       <th> Vehicle Rent/ per Day</th>
                       <th>Source & Destination </th> 
                       <th> Distance in km </th>
                       <th>  Booking Days</th>
                       <th>  Goods Name</th>
                       <th>Accept </th>
                        <th> Reject </th>
                   
                </tr>
               
                <%
                Student stud=new Student();
                Vector vlist=stud.list123(search);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr>
             

                     <td></td>  
                    <td><%=s.getName()%></td>  
                    <td><%=s.getEmail()%></td>  
                    <td><%=s.getVtype()%></td>   
                    <td><%=s.getVno()%></td>
                     <td><%=s.getVrent()%> RS.</td>  
                      <td><%=s.getSource()%> To <%=s.getDestination()%></td>  
                         <td><%=s.getDkm()%></td>   
                         <td><%=s.getBookd()%></td> 
                         <td><%=s.getGname ()%></td> 
                      
                      
                      <td> <form action="EmailSendingServlet3" method="post">
			
				<input type="hidden"  value="<%=s.getEmail()%>" name="recipient" size="50"/>
                <input type="hidden" value="Goods Transport" name="subject" size="50"/>
               	<input type="hidden"  value="<%=s.getSid()%>" name="sid" size="50"/>
                               
                <input type="hidden" value=" Hello sir your request is approved " cols="39" name="content">
      
		
			<input type="submit" value="Accept"/>
			</form>
		</td>
                        <td>
                        <form action="EmailSendingServlet3" method="post">
			
				<input type="hidden"  value="<%=s.getEmail()%>" name="recipient" size="50"/>
                <input type="hidden" value="Goods Transport" name="subject" size="50"/>
               	<input type="hidden"  value="<%=s.getSid()%>" name="sid" size="50"/>
                               
                <input type="hidden" value="Hello Sir your request is Rejected" cols="39" name="content">
      
		
			<input type="submit" value="Reject"/>
			</form>
                        
                        
                        
                        
                        
                        
                        
                        </td>
                     
                   </tr>
                <%  
            }
             %>
            </table></center>
            </div>
          
           
          
    </body>
</html>

