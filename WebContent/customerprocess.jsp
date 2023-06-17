<%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
   
   
   float bal=200;
   try
   {
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
	Connection con = DB.getCon();

    String id=request.getParameter("id");
  int ii=0;
   String pwd=request.getParameter("pwd");
   PreparedStatement ps3=con.prepareStatement("select *  from clogin where cid=? ");
				ps3.setString(1,id);
							
 ResultSet rs3=ps3.executeQuery();
// System.out.println("hiii");
 if(rs3.next()){System.out.println("hiii22");
 response.sendRedirect("exist.jsp");
 }
 else{
      PreparedStatement ps1=con.prepareStatement("select MAX(id) from clogin");
 ResultSet rs2=ps1.executeQuery();
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
 }
		      
			   int ind=0;
   PreparedStatement st=con.prepareStatement("insert into clogin values(?,?,?,?)");
    st.setInt(1,ii);
    st.setString(2,id);
	    st.setString(3,pwd);
		st.setInt(4,ind);
		st.executeUpdate();
 response.sendRedirect("process.jsp");
 con.close();
 }
   }
   catch(Exception e)
   {
	System.out.println(e);   
   }
 %>