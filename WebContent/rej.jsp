<%@ page import="java.sql.*"%>
<%@ page import="p1.*" %>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
</HEAD>

<BODY>
 
<%
 String id1=request.getParameter("id");
  String accno="";
  String atype="";
  String sbname="";String cid="";
 int id=Integer.parseInt(id1);
  System.out.println("rej   "+id);

	Connection con = DB.getCon();
  PreparedStatement st=con.prepareStatement("select * from transfer where id='"+id1+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	accno=rs.getString(2);
		atype=rs.getString(5);
		sbname=rs.getString(8);
}
	   PreparedStatement st5=con.prepareStatement("select * from customer where bname=? and    accno=? and atype=?");
	   st5.setString(1,sbname);
	   st5.setString(2,accno);
	   st5.setString(3,atype);
ResultSet rs1=st5.executeQuery();
while(rs1.next())
{
	cid=rs1.getString(1);
}
 PreparedStatement st1=con.prepareStatement("insert into reject values(?,?,?,?)");
 st1.setString(1,cid);
  st1.setString(2,accno);
   st1.setString(3,atype);
    st1.setString(4,sbname);
int i=st1.executeUpdate();
PreparedStatement st2=con.prepareStatement("delete from transfer where id=?");
 st2.setString(1,id1);
 
int j=st2.executeUpdate();
if(j>0)
	%>
 <center><BR><BR><BR>	<h2>The Transaction for the customer ID <%=cid%> is Rejected</h2>
 <BR><BR><input type=hidden name="bname" value="<%=sbname%>">
 <input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 
</BODY>
</HTML>
