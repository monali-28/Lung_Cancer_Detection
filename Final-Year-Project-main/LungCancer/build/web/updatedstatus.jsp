<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.Dbcon"%>
<%

String id=request.getParameter("id");
String status=request.getParameter("status");

String sql="UPDATE `doctor` SET `status`='"+status+"' WHERE `did`='"+id+"'";

 Statement statement = Dbcon.connect();
                             statement.executeUpdate(sql);
                             response.sendRedirect("ViewDoctors.jsp");

%>