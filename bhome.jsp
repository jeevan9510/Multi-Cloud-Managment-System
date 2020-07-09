<%-- 
    Document   : bhome
    Created on : Aug 24, 2015, 7:07:03 PM
    Author     : hari
--%><%@page import="java.sql.ResultSet"%> 
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
		<h1>A Novel Model For Competition <a href="#">And Cooperation Among Cloud Providers</a></h1>
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
			<span class="step"><a>1</a> File Request</span>
			<span class="step"><a>2</a> price Policies </span>
			<span class="step"><a>3</a> Storage capacity</span>
			<span class="step"><a>4</a> Graph </span>
                        <span class="step" style="color:#00ff00"><a>5</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">
   






		<div class="col">
			<h3> <span class="red">Abstract</span></h3>
			<p style="text-align:justify">
                        The cloud market is nowadays fiercely competitive with many cloud providers.
                        On one hand, cloud providers compete against each other for both existing and new cloud users.
                        To keep existing users and attract newcomers, it is crucial for each provider to offer an optimal
                        price policy which maximizes the final revenue and improves the competitive advantage.
                        The competition among providers leads to the evolution of the market and dynamic resource prices overtime.
                        On the other hand, cloud providers may cooperate with each other to improve their final revenue.
                        Based on a Service Level Agreement, a provider can outsource its users? resource requests to its partner to
                        reduce the operation cost and thereby improve the final revenue.
                        </p>
                        <img src="images/logg.jpg"/>

                              

		</div>
		<div class="col">
			<h3>Existing  <span class="red">System</span></h3>
			<p style="text-align:justify">
                            In the Existing System cloud computing has received significant investments in the industry.
                            Many cloud providers are participating in the market, forming a competitive environment,
                            Since the amount of resources in a user?s request is much smaller than the capacity of a provider,
                            the user?s request can be satisfied by any provider. The user?s satisfaction can be evaluated through a
                            utility measure which depends not only on the resource properties but also on the user?s preference to
                            choose certain providers, i.e., two providers with the same resource capacities and usage price may be
                            considered different for a user due to the user?s choice behavior and loyalty.

                        </p>
		</div>
		<div class="col last">
			<h3>Proposed  <span class="red">System</span></h3>
			<p style="text-align:justify">
                            In the Proposed System we are introducing the concept i.e dynamic pricing strategy,
                            here the price will be set dynamically based on the user?s resource request.
                            Due to this we can satisfies both the cloud provider as well as user.
                            In this the Broker will acts as an interface between the cloud provider and the cloud user,
                            Broker should play the crucial role. the realistic case of the current cloud market
                            where providers may have different operation costs. Cooperation among providers may
                            reduce the operation cost and therefore improve the final revenue
                        </p>
              <h3><span class="red">Advantage</span></h3>
  <p class="info"> Maximizing the final revenue of the cloud providers and satisfying the users with resonable prices .</p>
		</div>
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