<%-- 
    Document   : csp
    Created on : Jul 27, 2015, 2:31:32 PM
    Author     : hari Shri Hanuman Chalisa 3D animation
--%>
<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp" %>
<%
String va=request.getParameter("va");
if(va != null)
{
    if(va.equals("1"))
{

String name=request.getParameter("un");
String pw=request.getParameter("pw");//pro
String p=request.getParameter("pro");//

ResultSet rs= st.executeQuery("select * from PROVIDER where NAME='"+name+"' and PASSWORD='"+pw+"' and PROVIDER='"+p+"'");

if(rs.next())
{ session.setAttribute("cname", name); %>
<script>
    //alert("login Sueccssfully")
    window.location="phome.jsp";
</script>
<% }else{ %>
<script>
    alert("login faill or Username and Password invalid")
    window.location="csp.jsp";
</script>
<% } } } %>
 <html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>a novel model for competition and cooperation among cloud providers </title>
	<meta name="description" content="Web Application" />
	<meta name="keywords" content="web, application" />
	<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="header">
		<h1>A Novel Model For Competition <a href="#">And Cooperation Among Cloud Providers</a></h1>
		<ul id="menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="cuser.jsp">Cloud User</a></li>
			<li><a href="cbroker.jsp">Cloud Broker </a></li>
			<li class="active"><a href="csp.jsp">CLoud Service Provider</a></li>
		</ul>
	</div>

	<div id="teaser">
		<div class="wrap">
			<div id="image"></div>
			<div class="box">
				<h2>Competition And Cooperation Among  <em title="Sharing, Data Management and Collaboration">Cloud Provider</em></h2>
                                <p style="text-align:justify">
                                 We are introducing the concept i.e dynamic pricing strategy,
                                 here the price will be set dynamically based on the user?s resource request.
                                 Due to this we can satisfies both the cloud provider as well as user.
                                 the realistic case of the current cloud market where providers may have different operation costs. </p>
			</div>
		</div>
	</div>

	<div id="bar">
		<div class="wrap">
			<span class="step"><a>1</a> Cloud User</span>
			<span class="step"><a>2</a> Cloud Broker </span>
			<span class="step"  style="color:#ff6666"><a>3</a> CLoud Service Provider</span>
		</div>
	</div>

	<div class="wrap">

            <center><h2 style="color:#6666ff">Login Form</h2>
                <form action="csp.jsp?va=1" method="post">
                <table align="center">
                      <tr> <td> UserName ::  </td>  <td> <input type="text" name="un" required="true"> </td>  </tr>
                      <tr> <td> Password ::  </td>  <td> <input type="password" name="pw" required="true"> </td>  </tr>
                      <tr> <td> Select Providers::  </td>  <td> <select name="pro" required="true"> <option value="">Select</option><option value="provider1">Provider1</option><option value="provider2">Provider2</option><option value="provider3">Provider3</option> </select> </td>  </tr>
                         <tr> <td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>  <td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>  </tr>
                      <tr> <td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input type="submit" value="Login" > </td>  <td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <input type="reset" value="reset"> </td>  </tr>
                      <tr> <td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>  <td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>  </tr>

                  </table>
                </form>
            </center>

            <br>
            <br>
            <br>
            <br>




	</div>

	<div id="footer">
		<p class="right">Design:  <a  href="http://www.trylogic.in/">Trylogic</a></p>
		<p>&copy; Copyright 2015 <a href="#">Cloud Providers</a> &middot; All Rights Reserved</p>
	</div>
</body>
</html>