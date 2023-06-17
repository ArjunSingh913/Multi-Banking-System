<html>
<body background="backgroun.png">

<%@ page import="java.sql.*"%>
<%@ page import="p1.*" %>
<%
try
{
int i=0;String accno="";float bal=0;
String cid= (String)session.getAttribute("id");
System.out.println( "id=");System.out.println( cid);
  String bname=(String)session.getAttribute("bname");System.out.println(bname);
  
 // Class.forName("oracle.jdbc.driver.OracleDriver");
 // Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
	Connection con = DB.getCon();
  
 PreparedStatement st1=con.prepareStatement("select * from customer where id=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs1=st1.executeQuery();%><BR><BR><center><h2>Pending Transactions<BR><BR>
<table align=center cellpadding="0" border=1 width="80%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b> A/C Number </td>
	
			<td align=center ><b>Account Type</td>
	<td align=center><b>Name of Bank</td><td align=center><b>Amount</td><td align=center><b>Destination A/C Number</td><td align=center><b>Balance</td>
				</tr>
<%
while(rs1.next())
{accno=rs1.getString(4);
bal=rs1.getFloat(8);

System.out.println(accno);

   PreparedStatement st2=con.prepareStatement("select * from transfer where saccno=? and sbank=? ");
	   st2.setString(1,accno);
	   st2.setString(2,bname);
ResultSet rs=st2.executeQuery();%><%
while(rs.next())
{
	i++;
	%>
	<td align=center><%=rs.getString(2)%> </td><td align=center><%=rs.getString(5)%> </td>
		<td align=center><%=rs.getString(8)%> </td>
		<td align=center><%=rs.getFloat(4)%> </td> 
<td align=center><%=rs.getString(9)%> </td>
			<td align=center><%=bal%> </td></tr>
<%
}	}}
catch(Exception e)
{
	System.out.println(e);
}
  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='treport.jsp'">

</center>
</body>
</html>