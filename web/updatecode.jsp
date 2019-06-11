<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
   int customer_id=Integer.parseInt(request.getParameter("customer_id"));
   String customer_name=request.getParameter("customer_name");
   String contact_no=request.getParameter("contact_no");
   String email_address=request.getParameter("email_address");
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","userdb","test");
   PreparedStatement ps=con.prepareStatement("update  customer set customer_name=?,contact_no=?,email_address=? where customer_id=?");
   ps.setString(1,customer_name);
   ps.setString(2,contact_no);
   ps.setString(3,email_address);
   ps.setInt(4,customer_id);
   ps.executeUpdate();
   out.print("<script>alert('record updated');window.location.href='manage.jsp'</script>");
%>
 