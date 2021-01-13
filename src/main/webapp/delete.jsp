<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>

<style>
    
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 6px;
    font-family: Arial, Helvetica, sans-serif;
     font-size: 14px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
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


               <table style="width:100%"  border="1"  >
             <tr>
                   <th>Sr. No.</th>
                    <th>Vehicle Name</th>
                      <th>Vehicle Type</th>
                       <th>Vehicle Number</th>
                       <th> Vehicle Rent/ per Day</th>
                        <th>Delete</th>
                   
                </tr>
               
                <%
                Student stud=new Student();
                Vector vlist=stud.list2(30);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr> 
                     <td></td>  
                    <td><%=s.getName()%></td>  
                    <td><%=s.getVtype()%></td>   
                    <td><%=s.getVno()%></td>
                    <td><%=s.getVrent()%></td>
                 
                       <td><a href='vdel.jsp?sid=<%=s.getSid()%>' ><img src="images/Delete.png" height="30px"></a></td>
                      
                   </tr>
                <%  
            }
             %>
            </table>
            
            
            
           