 <%@ page import="java.sql.*"%>
 <%@ page import="p1.*" %>
 <BODY background="backgroun.png"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="#DF4800">  New User Requests </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="#DF4800">User Name</font></b></td>
<td><font size="4" color="#DF4800">Password</b></td>
<td><font size="4" color="#DF4800">Bank Name</b></td> 
 <td colspan="2"><font size="4" color="#DF4800">Operations</b></td> 


</tr><%    
int s=0;


//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();
	   PreparedStatement st=con.prepareStatement("select * from blogin where status=?");
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="#DF4800"><%=rs.getString(2)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(4)%></font></td>
<td><a href="acceptbuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Accept</font></a></td>
<td><a href="deletebuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Decline</font></a></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 

