<%-- 
    Document   : uoffers
    Created on : Aug 28, 2015, 12:46:23 PM
    Author     : hari
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>

<%@include file="db.jsp" %>
<%
try{
    String un=session.getAttribute("uname").toString();
    session.setAttribute("uname", un);
   String va=request.getParameter("va");

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
			<li><a href="uhome.jsp">Home</a></li>
			<li><a href="cupfile.jsp">Upload File</a></li>
			<li  class="active"><a href="cvfiles.jsp">View File Status </a></li>
			<li><a href="cdfiles.jsp">Download files</a></li>
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
			<span class="step"><a>1</a> Upload File</span>
			<span class="step"><a>2</a> View File Status </span>
			<span class="step"><a>3</a> Download files</span>
                        <span class="step" style="color:#00ff00"><a>4</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">

              <center><h2 style="color:#6666ff">View Cloud Offers Files</h2>


<%
String val=request.getParameter("va");  System.out.println("output va::"+val);//s
if(val.equals("2")){
String fid=request.getParameter("fi"); System.out.println("output fid::"+fid);
String uname=request.getParameter("uname");  System.out.println("output funame::"+uname);
ResultSet rs= st.executeQuery("select OFFER,brokerstatus from FILES where FID='"+fid+"' and USID='"+uname+"'");
if(rs.next())
{
    String offer=rs.getString(1);   System.out.println("output offer::"+offer);
    String bs=rs.getString(2);      System.out.println("output  bs::"+bs);

    if(bs.equals("Uploading")){
        System.out.println("offer::"+offer);
    if(offer.equals("process")){
        System.out.println("offerssss ::"+offer);
     %>

                   <table align="center">
 <tr> <th> Provider Name</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Package </th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Price </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Offer </th>
     </tr>


       

       <tr> <td style="color:palevioletred"> Cloud 1</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:palevioletred"> 250 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:palevioletred">RS.500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud1">
            <input type="hidden" name="pack" value="250">
            <input type="hidden" name="Price" value="500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:palevioletred" type="submit"  value="Apply">

        </form></td> </tr>
<tr> <td style="color:palevioletred"> Cloud 1</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:palevioletred"> 500 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:palevioletred">RS.1000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud1">
            <input type="hidden" name="pack" value="500">
            <input type="hidden" name="Price" value="1000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:palevioletred" type="submit"  value="Apply">
        </form></td> </tr>

<tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td>
       </tr>
       <tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td>
       </tr>

       
 <tr> <th> Provider Name</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Package </th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Price </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Offer </th>
     </tr>
     <tr> <td style="color:#ff9900"> Cloud 2</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900"> 250 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900">RS.500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud2">
            <input type="hidden" name="pack" value="250">
            <input type="hidden" name="Price" value="500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input style="color:#ff9900" type="submit"  value="Apply">
        </form></td> </tr>
<tr> <td style="color:#ff9900"> Cloud 2</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900"> 500 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900">RS.1000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud2">
            <input type="hidden" name="pack" value="500">
            <input type="hidden" name="Price" value="1000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#ff9900" type="submit"  value="Apply">
        </form></td> </tr>
<tr> <td style="color:#ff9900"> Cloud 2</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900"> 750 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900">RS.1500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud2">
            <input type="hidden" name="pack" value="750">
            <input type="hidden" name="Price" value="1500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#ff9900" type="submit"  value="Apply">
        </form></td> </tr>

<tr> <td style="color:#ff9900"> Cloud 2</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900"> 1000 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#ff9900">RS.2000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud2">
            <input type="hidden" name="pack" value="1000">
            <input type="hidden" name="Price" value="2000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#ff9900" type="submit"  value="Apply">
        </form></td> </tr>



<tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td>
       </tr>
       <tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td>
       </tr>


 <tr> <th> Provider Name</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Package </th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Price </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Offer </th>
     </tr>

     <tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 250 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="250">
            <input type="hidden" name="Price" value="500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>
<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 500 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.1000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="500">
            <input type="hidden" name="Price" value="1000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>
<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 750 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.1500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="750">
            <input type="hidden" name="Price" value="1500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>

<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 1000 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.2000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="1000">
            <input type="hidden" name="Price" value="2000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>


<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 1500 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.2500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="1500">
            <input type="hidden" name="Price" value="2500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>
<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 2000 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.3000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="2000">
            <input type="hidden" name="Price" value="3000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>

<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 2500 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.3500 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="2500">
            <input type="hidden" name="Price" value="3500">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>


<tr> <td style="color:#0000ff"> Cloud 3</td><td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff"> 3000 MB</td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td style="color:#0000ff">RS.4000 </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td><form action="offers.jsp?val=1" method="post">
            <input type="hidden" name="p" value="Cloud3">
            <input type="hidden" name="pack" value="3000">
            <input type="hidden" name="Price" value="4000">
            <input type="hidden" name="fi" value="<%=fid%>">
            <input  style="color:#0000ff" type="submit"  value="Apply">
        </form></td> </tr>
                </table>
<%}else if(offer.equals("Processing")){
%>
<h2 style="color:#ff0066 ">your already select cloud offers  </h2>
<h3 style="color:plum ">Your File is Processing.....Wait for a some time </h3>
                  

<%}

}else if(bs.equals("processing")){
%>
<h2 style="color:#ff0066 ">Broker Not Yet Accepted Your File </h2>
<h3 style="color:plum ">Your File is Processing.....Wait for a some time </h3>
                  

<%}else{
%> <table align="center">
      <tr> <th style="font-size:20px"><%=offer%></th>

 </tr> </table>
 <%}
    }
}   %>




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



<%
}catch(Exception ex)
{
 %>
<script>
    var e=<%=ex%>;
    alert("Username is defind null value ::"+e)
    window.location="cuser.jsp";
</script>
<%
}
%>