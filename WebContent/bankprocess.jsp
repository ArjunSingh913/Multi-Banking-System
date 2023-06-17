<%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
   int i=0;int ii=0;
   
   float bal=200;
   
   //Class.forName("oracle.jdbc.driver.OracleDriver");
   //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");

   Connection con = DB.getCon();
   
   
 PreparedStatement st1=con.prepareStatement("select MAX(id) from blogin");
 ResultSet rs1=st1.executeQuery();
 if(rs1.next()){
	 String s=rs1.getString(1);
	 if(s==null){
	 i=1;}else{i=Integer.parseInt(s)+1;}
 }
   String bid=request.getParameter("id");

  // String name=request.getParameter("name");
   String pwd=request.getParameter("pwd");
 //  String accno=request.getParameter("accno");
     // String cid=request.getParameter("cid");
//String bname=(String)session.getAttribute("bname");
		       String bname=request.getParameter("bname");
			   int ind=0;



PreparedStatement ps2=con.prepareStatement("select * from bank where bname=?");
 ps2.setString(1,bname);
 ResultSet rs3=ps2.executeQuery();
 if(rs3.next()){
 }else{
 PreparedStatement ps1=con.prepareStatement("select MAX(id) from bank");
 ResultSet rs2=ps1.executeQuery();
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
 }
 
PreparedStatement st3=con.prepareStatement("insert into bank values(?,?)");
  st3.setInt(1,ii);
    st3.setString(2,bname);
	    st3.executeUpdate();

 }
   PreparedStatement st=con.prepareStatement("insert into blogin values(?,?,?,?,?)");
  st.setInt(1,i);
    st.setString(2,bid);
	    st.setString(3,pwd);
		st.setString(4,bname);
		st.setInt(5,ind);
		st.executeUpdate();
 response.sendRedirect("process.jsp");
 
 %>