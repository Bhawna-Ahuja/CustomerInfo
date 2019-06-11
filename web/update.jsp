<%-- 
    Document   : update
    Created on : 11 Jul, 2018, 6:08:10 PM
    Author     : IP 310
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updatecode.jsp" method="post">
            <%
              int customer_id=Integer.parseInt(request.getParameter("customer_id"));
              Class.forName("oracle.jdbc.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","userdb","test");
              PreparedStatement ps=con.prepareCall("select * from customer where customer_id=?");
               ps.setInt(1,customer_id);
               ResultSet rs=ps.executeQuery();
               rs.next();
            %>
            <table border="1" style="width:50%;margin:0 auto;">
                <tr>
                    <td colspan="2" style="font-size:25px;color:blue; text-align:center;">
                        Update Customer Information
                    </td>
                 </tr>
                <tr>
                    <td>Customer Id</td>
                    <td><%=rs.getInt("customer_id" )%></td>
                 </tr>
                <tr>
                    <td>Customer Name</td>
                    <td>
                        <input type="text" name="customer_name" value="<%=rs.getString("customer_name")%>"/>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><%=rs.getString("gender")%></td>
                </tr>
                <tr>
                    <td>Contact No</td>
                    <td>
                        <input type="text" name="contact_no" value="<%=rs.getString("contact_no")%>">
                    </td>
                 </tr>
                 <tr>
                     <td>Email Address</td>
                     <td><input type="text" name="email_address" value="<%=rs.getString("email_address")%>">
                      </td>
                  </tr>
                  <tr>
                      <td>Connect Date</td>
                      <td><%=rs.getString("connect_date")%></td>
                  </tr>
                  <tr>
                      <td><input type="hidden" name="customer_id" value="<%=rs.getInt("customer_id")%>"></td>
                      <td>
                      <input type="submit" value="update">
                      </td>
                   </tr>
            </table>
        </form>
    </body>
</html>
