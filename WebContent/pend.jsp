<%@ page import="java.sql.*"%>
<%@ page import="p1.*" %>
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

//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();
 String id1=request.getParameter("id");

 String bname=""; String cid=""; String accno=""; String pwd="";

  PreparedStatement st=con.prepareStatement("select * from customer where id=?");
	st.setString(1,id1);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

cid=rs.getString(1);
pwd=rs.getString(7);
accno=rs.getString(2);
bname=rs.getString(5);

	}
 PreparedStatement st1=con.prepareStatement("insert into creject values(?,?,?,?)");
 st1.setString(1,cid);
  st1.setString(2,pwd);
   st1.setString(3,accno);
    st1.setString(4,bname);
int i=st1.executeUpdate();

  PreparedStatement st2=con.prepareStatement("delete from customer where id=? and bname=? and accno=? and tpwd=?");
 st2.setString(1,id1);
 st2.setString(2,bname);
 st2.setString(3,accno);
 st2.setString(4,pwd);
 
int j=st2.executeUpdate();
if(j>0){	%>
	 <center><BR><BR><BR>	<h2> Customer ID <%=id1%> Account  is Rejected </h2>
	 <BR><BR>
<input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 

 <%}%>
</BODY>
</HTML>
