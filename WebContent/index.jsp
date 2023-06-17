<%@ page session = "false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<script type="text/javascript">
function startTime()
{
var today=new Date();
var h=today.getHours();
var m=today.getMinutes();
var s=today.getSeconds();
// add a zero in front of numbers<10
m=checkTime(m);
s=checkTime(s);
document.getElementById('txt').innerHTML=h+":"+m+":"+s;
t=setTimeout('startTime()',500);
}
function checkTime(i)
{
if (i<10)
{
i="0" + i;
}
return i;
}
</script>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>
			UNIVERSAL NATIONAL BANK
		</title>
		<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body onload="startTime()">
		<div id="bg1"></div>
		<div id="bg2"></div>
		<div id="outer">
			<div id="header">
				<div id="logo">
					<h1>
				UNIVERSAL NATIONAL BANK			
					</h1>
				
				</div>
				
				<br>
			
				<marquee behavior="alternate"><b><i>We Bring Banking at your Finger Tips</i></b></marquee>
				 <div id="txt" align="right"></div>
				<div id="nav">
					<ul>
						<li class="first">
							<a href="login.jsp">CUSTOMER LOGIN</a>
						</li>
						<li>
							<a href="blogin.jsp">EMPLOYEE LOGIN</a>
						</li>
						<li>
							<a href="admin.jsp">ADMIN LOGIN</a>
						</li>
						<li>
							<a href="loanfacilities.html">LOANS</a>
						</li>
						<li>
							<a href="internet banking.html">INTERNET BANKING</a>
						</li>
						<li>
							<a href="aboutus.html">ABOUT US</a>
						</li>
						
							
						
					</ul><br class="clear" />
				</div>
			</div>
			
			
			<div id="banner">
				<div class="captions">
					<h2>GOOD PEOPLE TO GROW WITH</h2>
				</div>
				<img src="images/banner.jpg" alt="" />
			</div>
			<div id="main">
			
				<div id="sidebar">
					<div class="box">
						<h3>
							LATEST UPDATES
						</h3>
						<div class="dateList">
							<ul class="linkedList dateList">
								<li class="first">
									<span class="date">may 21</span>RBI Eases Rules For Loans To Exporters
								</li>
								<li>
									<span class="date">May 20</span>After Rupee Crisis, RBI Shores Up Currency's Defences.
								</li>
								<li>
									<span class="date">May 16</span>Deutsche Bank Raises Dec 2014 Target For Sensex To 28,000 Points.
								</li>
								<li>
									<span class="date">May 16</span>New Govt Must Respect Appointment Of RBI Chief: PC.
								</li>
								<li>
									<span class="date">May 15</span> SBI to start special scheme for children's accounts.
								</li>
								<li class="last">
									<span class="date">may 7</span>Soon, Raghuram Rajan signed Rs 1000 banknotes.
								</li>
								<li>
								 <a href="http://www.businessworld.in/finance/banking">FOR MORE UPDATES</a>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
				<div id="content">
				
					<div class="box">
						<font color="#990000">
							<h1>WELCOME TO UNIVERSAL NATIONAL BANK</h1>
						
						</font>
						<img src="images/pic01.jpg" width="150" height="150" alt="" class="left" />
						<p>
						   <font color="black">
							<ul>
							<li>Freedom.............That's what we all cherish.</li>

                             <li>Freedom to enjoy all the things we are otherwise prevented<br> from enjoying in order to make way for all the mundane things we are forced to do........<br>like going to the bank, standing in queue to make a withdrawal etc..etc..</li>

                              <li>That's why we brought our unique net banking facility to all our esteemed customers.<br>It's one step in the right direction to achieving financial freedom and peace of mind.</li>
                              <b>Happy banking!</b>
                              </ul>
                              </font>
						</p>
					</div>
					<font color="#990000">
							<h1><U>SERVICES WE PROVIDE</U></h1>
						
						</font><BR>
				<img src="images/icon-01.png"  />SERVICE ONE<br><span>User ID</span></h3>
    			              
                <p> we facilitate our users by providing them their own ID's for accessing there Accounts.</p>
					
				
			      <img src="images/icon-02.png" />SERVICE TWO <br><span>FUND TRANSFER</span></h3>                
                <p>Transfer of Payments can be easily done. Transfers can be made in Same Bank as well as in Another banks .</p>
                
                <img src="images/icon-03.png" />SERVICE THREE <br><span>TRANSACTION'S RECORD</span></h3>                
                <p>User can easily access to their Accounts. They can view their Transaction's history/Records. Can view their rejected transactions.</p>
               
               
			      <img src="images/icon-04.png" />SERVICE FOUR <br><span>PAY BILLS & RECHARGE</span></br>
                <p>As a future concern our bank is shortly commencing for the Payments of Online Bills and Mobile's Recharge.</p>
              
              
				
						
					</div><br class="clear" />
				</div><br class="clear" />
			</div>
		</div>
		<div id="copyright">
			&copy; universalnationalbank. Designed by ducat .
		</div>
	</body>
</html>