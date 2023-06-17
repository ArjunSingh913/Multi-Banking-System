<%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
  Connection con = DB.getCon(); 
   

int id=Integer.parseInt(request.getParameter("id"));
PreparedStatement ps=con.prepareStatement("delete from blogin where id=?");
    System.out.println("hi");
	ps.setInt(1,id);

	ps.executeUpdate();
response.sendRedirect("deletebsuccess.jsp");
%>
