<%@page import="java.sql.*"%>
<%@ page import="p1.*" %>
<head><script>
function call()
{
	alert("fjhsfjhsdf");
}
		</script>
		<BODY background="backgroun.png">
		<form><BR><BR><BR>
<CENTER>
<h2><U>List of Transfer Pendings</H2><BR><BR><BR><BR>
<table align=center cellpadding="0" border=1 width="90%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b>Source A/C Number </td>
		<td align=center><b> A/C Name </td>
			<td align=center ><b>Transfer To Bank</td>
	<td align=center><b>Name of Bank</td><td align=center><b>Destination A/C No</td><td align=center><b>Amount</td><td align=center><b>Balance</td><td align=center ><b>Transaction Password<td align=center colspan=2><b>Trasfer</td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
 
String bname=request.getParameter("bname");
 Connection con = DB.getCon();
 PreparedStatement Ps=con.prepareStatement("select * from tranfer where sbank=?");
Ps.setString(1,bname);
ResultSet rs=Ps.executeQuery();

while(rs.next())
{
	int id=rs.getInt(1);
	  sacno=rs.getString(2);
}
 PreparedStatement st1=con.prepareStatement("select * from customer where accno=?'");
	  st1.setString(1,sacno);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
	{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(6);
	bal=rs1.getFloat(8);
	}
PreparedStatement st=con.prepareStatement("select * from tranfer where sbank=?");
st.setString(1,bname);
ResultSet rs2=st.executeQuery();

while(rs2.next())
{
	int id=rs2.getInt(1);
	  sacno=rs2.getString(2);
	  tpwd=rs2.getString(7);
	 
	 
	%>

<tr>
	<td align=center><%=sacno%> </td>
	<td align=center><%=acname%> </td>
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><b>Same</td>
		<td align=center disabled>  </td>
		<%}else
		{
		%>
<td align=center><b>Other</td>
		<td align=center disabled><%=dbn%>  </td>
		<%
		}
		%>
		<td align=center><%=rs.getString(3)%> </td>
		<td align=center><%=rs.getFloat(4)%> </td> 
			<td align=center><%=bal%></td> 
			<td align=center><%=tpwd%></td> 
			<td align=center><a href="acc.jsp">Accept</a> </td>
				<td align=center><a href="rej.jsp">Reject</a> </td></tr>
	<%
	 
}
%>
</table></form>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  