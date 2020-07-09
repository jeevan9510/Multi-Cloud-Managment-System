<%-- 
    Document   : weigh
    Created on : Dec 29, 2012, 5:45:42 PM
    Author     : sudha
--%> 

 <%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp" %>
<%
try{
    String un=session.getAttribute("bname").toString();
    session.setAttribute("bname", un);
%>

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
		<h1>Multi Cloud <a href="#">Management System</a></h1>
		<ul id="menu">
			<li class="active"><a href="bhome.jsp">Home</a></li>
			<li><a href="bufile.jsp">User File Request</a></li>
			<li><a href="bpolicies.jsp">View User price Policies </a></li>
			<li><a href="bcapacity.jsp">View resource of capacity</a></li>
			<li><a href="bgrapical.jsp">Graphical Representation </a></li>
			<li><a href="index.jsp">logout</a></li>
		</ul>
	</div>

	<div id="teaser">
		<div class="wrap">
			<div id="image"></div>
			<div class="box">
				<h2>Multi Cloud Management System  <em title="Sharing, Data Management and Collaboration">Cloud Provider</em></h2>
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
			<span class="step"><a>1</a> File Request</span>
			<span class="step"><a>2</a> price Policies </span>
			<span class="step"><a>3</a> Storage capacity</span>
			<span class="step" style="color:#ff6666"><a>4</a> Graph </span>
                        <span class="step" style="color:#00ff00"><a>5</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">

  
<!--
<p>
            The Generated Bar Chart is

        <img src="Charts"/>
        </p>-->

<p>
            The Generated Bar Chart is

        <img src="BarChart"/>
        </p>



	</div>

	<div id="footer">
		<p class="right">Design:  <a  href="http://www.trylogic.in/">Trylogic</a></p>
		<p>&copy; Copyright 2015 <a href="#">Cloud Providers</a> &middot; All Rights Reserved</p>
	</div>
</body>
</html>



<%
}catch(Exception e)
{
 %>
<script> var e=<%=e%>;
    alert("Username is defind null value ::"+e)
    window.location="cuser.jsp";
</script>
<%
}
%>