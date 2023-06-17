<%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
   try{
   	int ind=0;
   	Connection con = DB.getCon();
   	String uid=(String)session.getAttribute("id");
   	String name=request.getParameter("name");
   	String pwd=request.getParameter("password");
    String tpwd=request.getParameter("tpassword");
    String cid=request.getParameter("cid");
	String bname=request.getParameter("bname");
	String atype=request.getParameter("atype");
	float bal=1000;int status=0;
	long acc=0l;
	System.out.println("bname: "+bname+" "+uid);
   	PreparedStatement st;
   	ResultSet r;
   	st = con.prepareStatement("select (max(ACCNO)) from CUSTOMER where bname=?");
   	st.setString(1,bname);
    r = st.executeQuery();
   	if(r.next())
   	{
	   if(r.getString(1)!=null)
	   {
		   System.out.println("if");
			acc = Long.parseLong(r.getString(1))+1; 
	   }
   else
   {
    	System.out.println("else");
	   st = con.prepareStatement("select * from bank where bname=?");
	   st.setString(1,bname);
	    r = st.executeQuery();
	   if(r.next())
	   {		   
		   System.out.println("else if");
			acc = Long.parseLong(r.getString(3))+1;
	   }
   } 
   	}
   String accno = String.valueOf(acc);
   System.out.println("acc: "+accno);
   session.setAttribute("accno", accno);
   st=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
     st.setString(1,uid);
	 st.setString(2,cid);    
	 st.setString(3,pwd);
     st.setString(4,accno);
     st.setString(5,atype);
     st.setString(6,name);
  	 st.setString(7,bname);
	 st.setFloat(8,bal);
	   st.setString(9,tpwd);
	   st.setInt(10,status);
   
    st.executeUpdate();
   con.close();
   response.sendRedirect("acprocess.jsp");
   }catch(Exception e){
	   e.printStackTrace();
	   //response.sendRedirect("otherbanknewac.jsp");
   }
  %>
