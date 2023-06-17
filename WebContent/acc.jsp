<%@ page import="java.sql.*"%>
<%@ page import ="p1.*" %>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>
 
<%
 String id1=request.getParameter("id");
  String ch=request.getParameter("ch");
  System.out.println("acc   "+id1+"   "+ch);
  //boolean bid=Boolean.parseBoolean(ch);
//  int id=Integer.parseInt(id1);
//out.println(id1);
//out.println(ch); 
String saccno="";String id="";String did="";
  String atype="";
  String sbname="";float bal=0;String daccno="";float amt=0;String acname="";String dacname="";
  String dtype="";
  String dbname="";float dbal=0;
  //Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();
if(ch.equalsIgnoreCase("true"))
{ 
	 PreparedStatement st=con.prepareStatement("select * from transfer where id='"+id1+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
dbname=rs.getString(9);
	saccno=rs.getString(2);
		atype=rs.getString(5);	dtype=rs.getString(6);
		sbname=rs.getString(8);
daccno=rs.getString(3);
amt=rs.getFloat(4);
}
PreparedStatement st1=con.prepareStatement("select * from customer where bname=? and accno=? and atype=?");
	   st1.setString(1,sbname);
	   st1.setString(2,saccno);
	   st1.setString(3,atype);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
{
	id=rs1.getString(1);
    acname=rs1.getString(6);
	bal=rs1.getFloat(8);
}


PreparedStatement st2=con.prepareStatement("select * from customer where bname=? and accno=? and atype=?");
	   st2.setString(1,dbname);
	   st2.setString(2,daccno);
	   st2.setString(3,dtype);
ResultSet rs2=st2.executeQuery();
while(rs2.next())
{
	did=rs2.getString(1);
    dacname=rs2.getString(6);
	dbal=rs2.getFloat(8);
}
bal=bal-amt;
dbal=dbal+amt;

if(bal>0){
	 PreparedStatement st6=con.prepareStatement("update customer set bal=? where id=? and accno=? and bname=?");
 st6.setFloat(1,bal);
  st6.setString(2,id);
   st6.setString(3,saccno);
    st6.setString(4,sbname);
	st6.executeUpdate();
PreparedStatement st7=con.prepareStatement("update customer set bal=? where id=? and accno=? and bname=?");
 st7.setFloat(1,dbal);
  st7.setString(2,did);
   st7.setString(3,daccno);
    st7.setString(4,dbname);
	st7.executeUpdate();

 PreparedStatement st8=con.prepareStatement("insert into taccept values(?,?,?,?,?,?,?,?,?,?)");
 st8.setString(1,id);
  st8.setString(2,saccno);
   st8.setString(3,atype);
    st8.setString(4,sbname);
	  st8.setFloat(5,bal);
	 st8.setString(6,did);
  st8.setString(7,daccno);
   st8.setString(8,dtype);
    st8.setString(9,dbname);
st8.setFloat(10,amt);
int i=st8.executeUpdate();
PreparedStatement st9=con.prepareStatement("delete from transfer where id=? ");
 st9.setString(1,id1);
 
int j=st9.executeUpdate();
if(j>0)
	%>
 <center><BR><BR><BR>	<h2> Transaction is  Accepted</h2>
 <BR><BR>
 <input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
<%
}else{response.sendRedirect("nobal.jsp");}}
		 
else
{	%>
	 <center><BR><BR><BR>	<h2>The Transaction Password for the customer   is Invalid </h2>
	 <BR><BR>
<input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 

 <%}
%>
</BODY>
</HTML>
