 <%@ page import="java.sql.*"%>
 <%@ page import="p1.*" %>
 <BODY background="backgroun.png"><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="#DF4800">  New User Requests </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="#DF4800">User ID</font></b></td>
<td><font size="4" color="#DF4800">Password</b></td>

 <td colspan="2"><font size="4" color="#DF4800">Operations</b></td> 


</tr><%    
int s=0;
try
{
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();

String q1="select * from clogin where status=?";
	  System.out.println("Query is : " +q1);
	   PreparedStatement st=con.prepareStatement(q1);
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="#FF8409"><%=rs.getString(2)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td colspan="2"><a href="acceptuser.jsp?id=<%=id%>" style="text-decoration:none"><font size="3" color="#DF4800">Accept</font></a></td>

</tr> 
<%}
}
catch(Exception e)
{
	System.out.println(e);
}
%><center></table><BR><BR>
	<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 


 

