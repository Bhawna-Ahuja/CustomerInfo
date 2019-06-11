
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
   int customer_id=Integer.parseInt(request.getParameter("customer_id"));
   String customer_name=request.getParameter("customer_name");
   String gender=request.getParameter("gender");
   String contact_no=request.getParameter("contact_no");
   String email_address=request.getParameter("email_address");
   SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
   String connect_date=df.format(new Date());
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","root");
   PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
   ps.setInt(1,customer_id);
   ps.setString(2, customer_name);
   ps.setString(3, gender);
   ps.setString(4,contact_no);
   ps.setString(5, email_address);
   ps.setString(6,connect_date);
   ps.executeUpdate();
   out.print("<script>alert('Registration successfull');"+"window.location.href='index.jsp';</script>");
%>
