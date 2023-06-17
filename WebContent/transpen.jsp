<%@page import="java.sql.*"%>
<%@ page import="p1.*" %>
		<BODY background="backgroun.png">
		<form><BR><BR><BR>
<CENTER>
<h2><U>List of Transfer Pendings</H2><BR><BR><BR><BR>
<table align=center cellpadding="0" border=1 width="90%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b>Source A/C No</td>
		
			<td align=center ><b>Transfer To Bank</td>
	<td align=center><b>Name of Bank</td><td align=center><b>Destination A/C No</td><td align=center><b>Amount</td><td align=center><b>Balance</td><td align=center ><b>Transaction Password<td align=center colspan=2><b>Transfer</td>
				</tr>
<%
try
{
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
int id=0;
 String atype="";
String bname=(String)session.getAttribute("bname");
 Connection con = DB.getCon();
 PreparedStatement st=con.prepareStatement("select * from transfer where sbank='"+bname+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	id=rs.getInt(1);
	//out.println(id);
	String id1=String.valueOf(id);
	//out.println(id1);
	  sacno=rs.getString(2);
	  atype=rs.getString(5);
	    tpwd=rs.getString(7);
	   PreparedStatement st1=con.prepareStatement("select * from customer where bname=? and accno=? and atype=?");
	   st1.setString(1,bname);
	   st1.setString(2,sacno);
	   st1.setString(3,atype);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(4);
	bal=rs1.getFloat(8);
}

	%>

<tr>
	<td align=center><%=sacno%> </td>
	
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><b>Same</td>
		<td align=center ><%=bname%> </td>
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
			<%
			boolean check=false;
			if(rtpwd.equals(tpwd))
				check=true;

			else
				check=false;
			%>

			<td align=center><a href="acc.jsp?ch=<%=check%>&id=<%=id1%>">Accept</a> </td>
				<td align=center><a href="rej.jsp?id=<%=id1%>">Reject</a> </td></tr>
	<%
} 
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</table></form>
<br> <BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  