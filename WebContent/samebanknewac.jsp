
<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter account number");
 return false;
 }

 if(document.f1.name.value==""){
 alert("enter account holder name");
 return false;
 }


 if(document.f1.tpassword.value==""){
	
 alert("enter transaction password");
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1.tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 return false;
	}

 }

</script>

<BODY  ><BR>
 <form action="insaccount.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><u>Enter Account Details</u></font></h2><B></B></b>
 <table width="45%">
<tr><td>
<h3>Enter Account Number   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Enter Account Holder Name </td><td> <input type="text" name="name"></td></tr><tr></tr>

<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr>
  <tr><td>

<h3>Enter Transaction Password	 </td><td>      	     <input type="password" name="tpassword"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr>
     </table><BR>
 <BR><BR>
<input type=submit value =Submit>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
  </font></b> </form>
  </body>
  </center>
  </html>

