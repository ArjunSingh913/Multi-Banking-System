<%@ page import="java.sql.*" %>
<%@ page import="p1.*" %>
<HTML>
<HEAD>
<TITLE> TRANSFER TO OTHER BANK</TITLE>
 
</HEAD>
<center>
 <script>
 function ff(){
 if(document.f1.accno.value==""){
 alert("enter user account number");
  document.f1.accno.focus();
 return false;
 }}

 function ff1(){
 if(document.f1.daccno.value==""){
 alert("enter destination account number");
  document.f1.daccno.focus();
 return false;
 }} function ff2(){
var id=/^[0-9][0-9]*$/
	if(!(id.test(document.f1.amt.value)))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
	return false;
	}}
 function ff3(){
 if(document.f1.password.value==""){
	
 alert("enter password");
 document.f.password.focus();
 return false;
 }
 }
 function check(){
 if(document.f1.accno.value==""){
 alert("enter user account number");
 document.f1.accno.focus();
 return false;
 }


 if(document.f1.daccno.value==""){
 alert("enter destination account number");
 return false;
 }var id=/^[0-9][0-9]/
	if(!(id.test(document.f1.amt.value)))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
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
 }

</script>

<BODY background="backgroun.png"  ><BR><BR><BR><BR>
 <form action="tobsave.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><u>Enter Account Details</u></font></h2><B></B></b>
 <table>
<tr><td>
<h3>Enter Your Account Number   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>
<tr></tr><tr></tr>
  <tr><td><h3>Select  Destination Bank</td><td><SELECT NAME="bname"> 
<%
try
{
 	Connection con = DB.getCon();
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
<%}
}
catch(Exception e)
{
    System.out.println(e);
}    				  
				  
%>
  </SELECT></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td>

<h3> Enter Destination Account </td><td> <input type="text" name="daccno" onFocus='return ff()'></td></tr><tr></tr><tr></tr>
<tr><td>
<tr><td><h3> Destination Account Type</td><td><SELECT NAME="datype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>
<h3><tr><td><h3> Enter Amount </td><td> <input type="text" name="amt" onFocus='return ff1()'></td></tr><tr></tr><tr></tr>

<tr><td>

<h3> Enter Transaction Password	 </td><td>      	
    <input type="password" name="password" onFocus='return ff2()'></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="password1" onFocus='return ff3()'></td></tr><br><tr></tr><tr></tr>

     </table><BR>
 <BR><BR>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='traamt.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >

  </font></b> </form>
  </body>
  </center>
  </html>

