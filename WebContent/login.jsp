<%@ page session = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script >
function call()
{
if(document.f.cid.value==""){
alert("Please Enter Customer Id");
document.f.cid.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="col_font.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
	font-size: 24px;
}
.style2 {color: #990000}
.style4 {
	color: #990000;
	font-size: 16px;
	font-weight: bold;
}
.style8 {font-size: 12px}
.style9 {font-weight: bold}
-->
</style>
<link href="img.css" rel="stylesheet" type="text/css" />
</head>

<body bgcolor="#007289">
<table width="84%" height="696" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E4DEDA">
  <tr>
    <td width="11%" height="100" bgcolor="white">&nbsp;&nbsp;<img src="hawaii_national_bank_website_3.jpg" alt="img_3" width="36" height="51" hspace="30" vspace="30" /></td>
	
    <td width="50%"  bordercolor="#D6D3CE" bgcolor="white"><p><span class="style1">UNIVERSAL<br/>
        NATIONAL<br/>
        BANK</span><strong> <br/>
    &nbsp; </strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>BE PART OF ONLINE BANKING</b>.</span></p>   
     </td>
    <td width="39%" height="100">
    
      <table width="100%" height="150px" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" bgcolor="black">
       <td><image src="bankint.jpg" width="100%" height="150px"/>
        
      </td>
      
      <tr>
       
    </table></td>
  </tr>
  <tr>
    <td height="50" colspan="3"><table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
      <tr bgcolor="#262626">
        <td height="51" class="col_font"><strong></strong></td>
        
        <td class="col_font"><strong><a href="login.jsp"><input type="button" value="CUSTOMER LOGIN"/></a></strong></td>
        <td class="col_font"><strong>EMPLOYEE LOGIN</strong></td>
        <td class="col_font"><strong>BANK ADMIN</strong></td>
        <td class="col_font">LOANS</strong></td>
        <td class="col_font">INTERNET BANKING</strong></td>
        <td class="col_font"><strong>ABOUT US</strong></td>
      </tr>
    </table>
    
<center><BR><BR>
<font size="+2" color="#262626"><h2><b>WELCOME TO UNIVERSAL BANKING SERVICES</b></h2></font>
<br>
 



<form  method=post action="logincheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <img src="custlogin.jpg" width="510" height="89" />
 <td><b>Customer ID:</b></td><td><input type="text" name="cid" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr>
</table>
<br> <BR>

 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="button" name=back  value="Home" onClick="window.location='index.jsp'">
 <center><h2><b><a href="newcustomer.jsp"style="text-decoration : none"><font color="BLACK"><BR>New User..?<image src="signup.gif"/image></font> 

</a></b></h2></center>
 </form>
<br>

</center>
        
  <table>
  <tr>
    <td height="122" colspan="3" bgcolor="#007289" align="center">
    
   </td>
  </tr>
</table>

<map name="Map" id="Map"><area shape="poly" coords="26,32" href="#" />
<area shape="poly" coords="48,69" href="#" />
</map></body>
</html>
