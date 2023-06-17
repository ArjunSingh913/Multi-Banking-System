<%@ page import="java.sql.*" %>
<%@ page import="p1.*" %>
<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script>
  
 function check(){
 if(document.f1.accno.value==""){
 alert("enter  account number");
 return false;
 }
 if(document.f1.accno.value.length<10){
	 alert("Minimum 10 Digit allowed");
	 document.getElementById("acno").value="";
	 document.getElementById("acno").focus();
	 return false;
 }
 if(document.f1.name.value==""){
 alert("enter account holder name");
 return false;
 }

 if(document.f1.password.value==""){
	
 alert("enter password");
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 return false;
	}

if(document.f1.tpassword.value==""){
	
 alert("enter  transaction password");
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 return false;
	}

 }
 function checkno(){
	 var acno=document.getElementById("acno").value;
	 if(isNaN(acno)){
		 alert("Please give valid Account no");
		 document.getElementById("acno").value="";
		 document.getElementById("acno").focus();
	 }
	 
 }

</script>

<BODY background="backgroun.png"><BR>
 <form action="applysuccess.jsp" name="f1" method=post onsubmit='return check()'>
 <h2><b>Enter Details for Internet Banking</font></h2><B></B></b><table align="center">
 <tr><td><h3>Select Bank</td><td><SELECT NAME="bname" onChange="setURL()"> 
<%
	Connection con = DB.getCon();
	PreparedStatement st=con.prepareStatement("select * from bank ");
	ResultSet rs=st.executeQuery();
	while(rs.next()){
%>
          <option  ><%=rs.getString(2)%></option>
	<%}%>
  </SELECT></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td><h3>Enter Account Holder Name </td><td> <input type="text" name="name"></td></tr><tr></tr>
<tr><td>
<h3> Customer ID  </td><td> <input type="text" name="cid"></td></tr><tr></tr><tr></tr>
<tr><td>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>
  </SELECT></td></tr><tr><td>
  <h3>Account No</td><td><input type="number" name="acno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Phone No</td>  <td><input type="number" name="phone"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3>Email</td><td><input type="email" name="email"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3>User Name</td><td><input type="text" name="uname"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Password</td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr><tr></tr>

     </table>
 <BR><BR>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='internet banking.html'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >

  </font></b> </form>
  </body>
  </center>
  </html>

