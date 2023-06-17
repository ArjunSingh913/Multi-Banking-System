<%@page import="java.sql.*"%>
<%@ page import="p1.*" %>
		<BODY background="backgroun.png"><BR><BR><BR>
<CENTER>
<h2><U>List of Transfer Declines</H2><BR><BR><BR><BR>
<table align=center cellpadding=0 border=3 width="60%">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><b>Customer Number </td>
		<td align=center><b>A/C Number </td>
			<td align=center><b>A/C Type</td>
				<td align=center><b>Bank Name</td>
				<td align=center><b>Operation</td>
				</tr>
<%
try
{
	
int count=0;
String bname=request.getParameter("bname");
Connection con = DB.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reject");
while(rs.next())
{
	count++;
	String acc=rs.getString(2);
	%>

<tr>
	<td align=center><%=rs.getString(1)%> </td>
		<td align=center><%=acc%> </td>
		<td align=center><%=rs.getString(3)%> </td>
		<td align=center><%=rs.getString(4)%> </td><td align=center><a href="dec.jsp?accno=<%=acc%>">Delete</a></td></tr>
	<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}

%>
</table>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  