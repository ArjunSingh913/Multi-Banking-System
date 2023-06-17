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
 
<% try{
 String bid=request.getParameter("bid");
String pwd=request.getParameter("pwd");
String bname=request.getParameter("bl");
System.out.println("in bloginch "+bid+"  "+pwd+"  "+bname);
session.setAttribute("bid",bid);
session.setAttribute("bname",bname);
int in=1;


//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from blogin where bid='"+bid+"' and pwd='"+pwd+"' and bname='"+bname+"'");
if(rs.next())
{
	in=rs.getInt(5);
	if(in==1)
		response.sendRedirect("bmain.jsp");
	else
		response.sendRedirect("loginpending.jsp");
}
else
response.sendRedirect("loginffailure.jsp");

}catch(Exception e){}
%>
</BODY>
</HTML>
