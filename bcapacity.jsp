<%-- 
    Document   : bcapacity
    Created on : Sep 9, 2015, 6:47:57 PM
    Author     : hari
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
		<h1>A Novel Model For Competition <a href="#">And Cooperation Among Cloud Providers</a></h1>
		<ul id="menu">
			<li class="active"><a href="bhome.jsp">Home</a></li>
			<li><a href="bufile.jsp">User File Request</a></li>
			<li><a href="bpolicies.jsp">View User price Policies </a></li>
			<li><a href="bcapacity.jsp" >View resource of capacity</a></li>
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
			<span class="step" style="color:#ff6666"><a>3</a> Storage capacity</span>
			<span class="step"><a>4</a> Graph </span>
                        <span class="step" style="color:#00ff00"><a>5</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">



<%

 float rack;
 float goo;
 float tryl;

int ra=0;  String dom="";
  Statement st1=co.createStatement();Statement st2=co.createStatement();

String fquery1 ="select sum(FSIZE) from FILES where OFFER='rankspace'and  BROKERSTATUS='Accepted' and PROVIDERSTATUS='Accepted' ";

  ResultSet rs=st1.executeQuery(fquery1);
      rs.next();
          ra=rs.getInt(1);
          rack=ra/1024;
          System.out.println("F query000000000000 "+ra);
       int sn71 =st2.executeUpdate("update  GRAPHS set RANKING="+ra+" where DOMAIN='rankspace'");


String fquery2 ="select sum(FSIZE) from FILES where OFFER='trylogic'and  BROKERSTATUS='Accepted' and PROVIDERSTATUS='Accepted' ";

  ResultSet rs1=st2.executeQuery(fquery2);
      rs1.next();
         int ra1=rs1.getInt(1);
         tryl=ra1/1024;
          System.out.println("F query000000000000 "+ra1);
       int sn1 =st.executeUpdate("update  GRAPHS set RANKING="+ra1+" where DOMAIN='trylogic'");



String fquery3 ="select sum(FSIZE) from FILES where OFFER='google'and  BROKERSTATUS='Accepted' and PROVIDERSTATUS='Accepted' ";

  ResultSet rs3=st2.executeQuery(fquery3);
      rs3.next();
         int ra3=rs3.getInt(1);
         goo=ra3/1024;
          System.out.println("F query000000000000 "+ra3);
       int s3 =st.executeUpdate("update  GRAPHS set RANKING="+ra3+" where DOMAIN='google'");


%>




<table border="2" cellpadding="4" cellspacing="9">
    <tr> <h1 style="color:#ff3399"> Resource  Capacity  </h1><br><br><br> </tr>
     <tr>
         <td><h4 style="color:#ff3300">Rackspace</h4>  </td>  <td>&nbsp;&nbsp; &nbsp;&nbsp;<h4>Service Provider 1</h4> </td> <td>&nbsp;&nbsp;&nbsp;&nbsp; <h4>Total Space : 500GB</h4> </td> <td>&nbsp;&nbsp;&nbsp;&nbsp;<h4>Used Space:: <%=rack%>KB</h4> </td>
    </tr>
      <tr>
        <td><h4 style="color:#ff3300">Trylogic </h4></td>  <td> &nbsp;&nbsp; &nbsp;&nbsp;<h4>Service Provider 2</h4> </td> <td>&nbsp;&nbsp;&nbsp;&nbsp; <h4>Total Space : 1000GB</h4> </td>  <td>&nbsp;&nbsp;&nbsp;&nbsp;<h4>Used Space:: <%=tryl%>KB</h4> </td>
    </tr>
     <tr>
        <td><h4 style="color:#ff3300">Google </h4></td>  <td>&nbsp;&nbsp;&nbsp;&nbsp; <h4>Service Provider 3</h4> </td>  <td>&nbsp;&nbsp;&nbsp;&nbsp; <h4>Total Space : 1500GB</h4> </td>  <td>&nbsp;&nbsp;&nbsp;&nbsp;<h4>Used Space:: <%=goo%>KB</h4> </td>
   </tr>


</table>









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