<%-- 
    Document   : index
    Created on : 10 Jul, 2018, 5:15:40 PM
    Author     : IP 310
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="regcode.jsp" method="post">
           <%
              //this is Scriptlet here you can write java code
               out.println("<h1>Customer Registration Form</h1>");
               
           %>
           <hr/>
           Enter Customer Id:
           <input type="number" name="customer_id" required/><br/><br/>
           Enter Customer Name:
           <input type="text" name="customer_name" required/><br/><br/>
           Select Gender:
           <input type="radio" name="gender" value="male" required>Male
           <input type="radio" name="gender" value="female" required>Female<br/><br/>
           Enter Contact No.:
           <input type="number" name="contact_no" required><br/><br/>
           Enter Email Address:
           <input type="text" name="email_address" required><br/><br/>
           <input type="submit" value="Register">
           <a href="manage.jsp">Manage</a>
           
         </form>   
    </body>
</html>
