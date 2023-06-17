<%@page import="java.sql.*"%>
<%@ page import ="p1.*" %>
	
<%
int count=0;
String acc=request.getParameter("accno");

//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();

Statement st=con.createStatement();
int i=st.executeUpdate("delete from reject where accno='"+acc+"'");
 if(i>0)
%>
<BR><BR><BR><BR><center> <h2>Record is Deleted</h2>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  