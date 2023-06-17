<html>
<body background="backgroun.png">
<center><BR><BR><BR><BR><BR><BR>
<%@ page import="java.sql.*" %>
<%@ page import="p1.*" %>
<%String bname=(String)session.getAttribute("bname");


String cid=(String)session.getAttribute("cid");
String pwd=(String)session.getAttribute("pwd");
try
{
 Connection con = DB.getCon();
	    System.out.println(cid);
	    
%><center><h2><u>Account Information</u><BR><BR>
<table border="2" align="center" width="70%"><tr><td align="center"><h3>Customer Id</td><td align="center"><h3>Account Number</td><td align="center"><h3>Account Type</td><td align="center"><h3>Balance</td><td align="center"><h3>Status</td></tr>
<%
  PreparedStatement st=con.prepareStatement("select * from customer where bname=? and id=?");
	st.setString(1,bname);
	st.setString(2,cid);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
	%><tr><td align="center"><%=rs.getString(2)%></td>
		<td align="center"><%=rs.getString(4)%></td>
		<td align="center"><%=rs.getString(5)%></td>
		<td align="center"><%=rs.getString(8)%></td>
		<%int sta=rs.getInt(10);
		if(sta==1){%><td align="center">Created</td>
			<%}else{%><td align="center">in process</td><%}%>
		</tr>
<%
}
}
catch(Exception e)
{
       System.out.println(e);
 }      
      		
%></center></table><center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='userhome.jsp'">


</center>
</body>
</html>
