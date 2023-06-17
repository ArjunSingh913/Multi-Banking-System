 <%@ page import ="java.sql.*" %>
<%@ page import ="p1.*" %>
<%
   try{
   	Connection con = DB.getCon();
   	String cid=request.getParameter("cid");
   	String name=request.getParameter("name");
   	String bname=request.getParameter("bname");
   	String acno=request.getParameter("acno");
  	String phone=request.getParameter("phone");
  	String email=request.getParameter("email");
 	String uname=request.getParameter("uname");
    String pass=request.getParameter("tpassword1");
	System.out.println("bname: "+bname);
   	PreparedStatement st;
   	ResultSet r;
   	st = con.prepareStatement("select (ACCNO) from INTERNET where accno=?");
   	st.setString(1,acno);

    r = st.executeQuery();
   	if(r.next())
   	{  
   		System.out.println("if..");
		out.println("In this account number already started internate banking");
		RequestDispatcher rd=request.getRequestDispatcher("apply.jsp");
		rd.include(request,response); 
	}
   	else 
   	{
		System.out.println("else..");
   		st = con.prepareStatement("select (ACCNO) from CUSTOMER where accno=? and cid=?");
   		st.setLong(1,Long.parseLong(acno));
   	   	st.setString(2, cid);
    	r = st.executeQuery();
   		if(r.next())
   		{
   			System.out.println("else.. if");
   			System.out.println("insert the record");
   			PreparedStatement st1=con.prepareStatement("insert into INTERNET values(?,?,?,?,?,?,?,?)");
	   	     st1.setString(1,cid);
	   		 st1.setString(2,name);    
	   		 st1.setString(3,bname);
	   	     st1.setString(4,acno);
	   	     st1.setString(5,phone);
	   	     st1.setString(6,email);
	   	  	 st1.setString(7,uname);
	   		 st1.setString(8,pass);
	   	    st1.executeUpdate();
	   	    session.setAttribute("uname",uname);
	   	    session.setAttribute("pass",pass);
	   	   response.sendRedirect("success.jsp");
	   			
   		}
	  	 else
	  	 {
	  		out.println("Account No is not valid...");
	  		RequestDispatcher rd=request.getRequestDispatcher("apply.jsp");
			rd.include(request,response); 
	  	 }
   	}
   
   }catch(Exception e){
	   e.printStackTrace();
	  response.sendRedirect("apply.jsp");
	   
   }
   	
  %>
 