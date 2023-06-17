<%@page import="java.sql.*"%>
<%@ page import ="p1.*" %>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY background="backgroun.png"><BR><BR><BR><CENTER>
		<h2><U>List of Accounts</H2><BR><BR> 
		<BR><BR><BR>
 
<CENTER>
<form >
 <%String atype=request.getParameter("la");%>
<table align=center cellpadding=0 width="35%" border=3>
<colgroup   span=2 align=left >
<tr><td align=center>
	<b>SELECT ACCOUNTS  &nbsp;&nbsp;&nbsp; : </td><td><SELECT NAME="la" onChange="call()"> <option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>
	</table>

		<BR><BR><BR>
<CENTER>

<table align=center cellpadding=0 border=3>
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b>A/C Name </td>
			<td align=center><b>Balance</td>
				<td align=center><b>A/C Type</td>
				</tr>
<%
int count=0;
String bn=(String)session.getAttribute("bname");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where atype='"+atype+"' and bname='"+bn+"'");
while(rs.next())
{
	count++;
	%>

<tr>
	<td align=center><%=rs.getString(4)%> </td>
		<td align=center><%=rs.getString(6)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><%=rs.getString(5)%> </td></tr>
	<%
}
if(count==0)
{ session.setAttribute("lat",atype);
	response.sendRedirect("norec.jsp");
}
%>

</table>
<br> <BR><BR>
<center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  