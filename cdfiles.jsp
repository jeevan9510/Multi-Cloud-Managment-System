<%-- 
    Document   : cdfiles
    Created on : Sep 15, 2015, 12:26:18 PM
    Author     : hari
--%>
<%--
    Document   : cvfiles
    Created on : Aug 24, 2015, 3:37:36 PM
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
			<li><a href="cvfiles.jsp">View File Status </a></li>
			<li  class="active"><a href="cdfiles.jsp">Download files</a></li>
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
			<span class="step" style="color:#ff6666"><a>3</a> Download files</span>
                        <span class="step" style="color:#00ff00"><a>4</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">

              <center><h2 style="color:#6666ff">Download Files</h2>

                <table align="center">
 <tr> <th> File_ID</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> File_Name</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Key </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Size </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Date </th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Server_Status </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> File_Name</th> <th> &nbsp;&nbsp;&nbsp; </th>
   <th> Action</th></tr>
 <tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td> <td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>   <td> &nbsp;&nbsp;&nbsp; </td> </tr>
<%
ResultSet rs= st.executeQuery("select * from FILES where UNAME='"+un+"' order by FID ");
while(rs.next()){%>

<tr> <td> <%=rs.getString(1)%></td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(4)%></td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(5)%></td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(6)%> </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(7)%>  </td> <td> &nbsp;&nbsp;&nbsp; </td>
  <%String stt=rs.getString(9);
                        if(stt.equals("processing")){%>  <td style="color:#ff3300;font-size:20px ; font-family:Lucida Fax; font-style:italic;"><%=rs.getString(9)%>   </td>
                                          <td> &nbsp;&nbsp;&nbsp; </td>   <%}else if(stt.equals("Uploading")){%>
                                             <td style="color:#cccc00;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(9)%> </td>
                                           <td> &nbsp;&nbsp;&nbsp; </td>  <%
                                             }else if(stt.equals("Accepted")){%>
                                            <td style="color:#00cc33;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(9)%>  </td>
                                          <td> &nbsp;&nbsp;&nbsp; </td>   <%
                                             }else if(stt.equals("Blocked")){%>
                                            <td style="color:red;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(9)%>  </td>
                                          <td> &nbsp;&nbsp;&nbsp; </td>   <%
                                             }%>


       <%String stt1=rs.getString(10);

                        %>
                           <td><%=rs.getString(11)%></td>
                             <td> &nbsp;&nbsp;&nbsp; </td>


                           <td style="color:#ff3300;font-size:12px ; font-family:Lucida Fax; font-style:italic;">
                            <form action="downl.jsp?va=1" method="post">
                                <input type="hidden" name="fi" value="<%=rs.getString(1)%>">
                                <input type="hidden"name="key" value="<%=rs.getString(5)%>">
                                <input type="hidden"name="fnam" value="<%=rs.getString(11)%>">
                                <input type="hidden"  name="va" value="2">
                            <input type="submit" value="Download"></form>                        </td>
                                      

 
</tr>


 <%
}
%>



                  </table>

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
}catch(Exception e)
{
 %>
<script>
    alert("Username is defind null value ::"+e)
    window.location="cuser.jsp";
</script>
<%
}
%>