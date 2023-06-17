<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.id.value==""){
alert("Please Enter  Id");
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
	if(document.f.bname.value==""){
alert("Please Enter Bank Name");
return false;
}
}
</script>
<BODY background="backgroun.png">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2>Welcome To Universal Natinal Bank</b></h2></font>
<br>
 



<form  method=post action="bankprocess.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td><h3>User ID:</b></td><td><input type="text" name="id" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><h3> Password:</b></td><td><input type="password" name="pwd"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><h3>Retype Password:</b></td><td><input type="password" name="pwd1"></td>
</tr><tr></tr><tr></tr>
 <tr>
 <td><h3>Enter Bank Name:</b></td><td><input type="text" name="bname" ></td>
</tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='blogin.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
