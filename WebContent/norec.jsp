<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
 


<html>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY background="backgroun.png"><center><BR> <BR><BR><h2><U>List of Accounts</u></H2><BR><BR> 
<% String st=(String)session.getAttribute("lat");%>
 

		<BR><BR><BR>
<CENTER>
<form >

<table align=center cellpadding=0 width="50%">
<colgroup   span=2 align=left >
<tr><td align=center>
	<b>SELECT ACCOUNTS  &nbsp;&nbsp;&nbsp; : </td><td><SELECT NAME="la" onChange="call()"> <option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>

</table>
<br> </form><BR><BR><center><h3><li>No Records Found</li></h3>
  <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  

</BODY>
</HTML>
