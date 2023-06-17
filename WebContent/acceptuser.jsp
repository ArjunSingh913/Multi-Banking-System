<%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
    int status=1;
	Connection con = DB.getCon();
	PreparedStatement ps=con.prepareStatement("update clogin set status=? where id=?");
	ps.setInt(1,status);
	ps.setInt(2,id);
	ps.executeUpdate();
	response.sendRedirect("acceptsuccess.jsp");
%>
