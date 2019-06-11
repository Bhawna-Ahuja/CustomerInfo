<%-- 
    Document   : manage
    Created on : 10 Jul, 2018, 6:57:42 PM
    Author     : IP 310
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <%
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","userdb","test");
                 PreparedStatement ps=con.prepareStatement("select * from customer");
                 ResultSet rs=ps.executeQuery();
            %>
            <div style="width:800px;height:500px;margin:0 auto;">
                <table border="1" style="width:80%; margin:0 auto;">
                    <tr>
                        <th>Customer Id</th>
                        <th>Customer Name</th>
                        <th>Gender</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Connect Date</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                    <%
                       while(rs.next())
                       {
                         %>
                         <tr>
                             <td><%=rs.getInt("customer_id")%></td>
                             <td><%=rs.getString("customer_name")%></td>
                             <td><%=rs.getString("gender")%></td>
                             <td><%=rs.getString("contact_no")%></td>
                             <td><%=rs.getString("email_address")%></td>
                             <td><%=rs.getString("connect_date")%></td>
                             <td><a href="delete.jsp?customer_id=<%= rs.getInt("customer_id") %>">Delete</a></td>
                             <td><a href="update.jsp?customer_id=<%=rs.getInt("customer_id")%>">Update</a></td>
                         </tr>
                       <%
                       }
                    
                    %>
                 </table>
                 </div>
         </form>  
    </body>
</html>
