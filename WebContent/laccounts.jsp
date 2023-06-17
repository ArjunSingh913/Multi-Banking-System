<%@page import="java.sql.*"%>
<%@ page import ="p1.*" %>
		<BODY background="backgroun.png"><BR><BR><BR>
<CENTER>
<h2><U>List of Accounts</H2><BR><BR><BR><BR>
<table align=center cellpadding=0 >
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b>A/C Name </td>
			<td align=center><b>Balance</td>
				<td align=center><b>A/C Type</td>
				</tr>
<%
String bname=(String)session.getAttribute("bname");
System.out.println("bank name  "+bname);

//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{   
	%>

<tr>
	<td align=center><%=rs.getString(4)%> </td>
		<td align=center><%=rs.getString(6)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><%=rs.getString(5)%> </td></tr>
	<%
}
%>
</table>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  