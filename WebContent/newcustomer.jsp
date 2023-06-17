<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.id.value==""){
alert("Please Enter Customer Id");
document.f.id.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
 if(!((document.f.pwd.value)==(document.f.pwd1.value)))
	{
	 alert("enter correct password");
	 return false;
	}
}
function check(){
  var cid=	document.getElementById("cid").value;
  if(cid.length<3){
	  alert("Id Should be minimum 3 digit");
	  document.getElementById("cid").focus();
  }
}
</script>
<BODY background="backgroun.png">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2>WELCOME TO UNIVERSAL BANKING SYSTEM</b></h2></font>
<br>
 



<form  method=post action="customerprocess.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
<img src="nvabanda.jpg" width="510" height="89" />
 <td><h3>Customer ID:</b></td><td><input type="text" name="id" onblur="check()" id="cid" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><h3> Password:</b></td><td><input type="password" name="pwd"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><h3>Retype Password:</b></td><td><input type="password" name="pwd1"></td>
</tr><tr></tr><tr></tr>

</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='login.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
