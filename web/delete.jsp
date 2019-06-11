<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
  int customer_id=Integer.parseInt(request.getParameter("customer_id"));
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","userdb","test");
PreparedStatement ps=con.prepareStatement("delete from customer where customer_id=?");
ps.setInt(1,customer_id);
ps.executeUpdate();
out.print("<script>alert('Record Deleted');window.location.href='manage.jsp';</script>"); 
%>

