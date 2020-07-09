<%-- 
    Document   : bpolicies
    Created on : Sep 2, 2015, 3:55:23 PM
    Author     : hari
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="crypt.EncryptDecrypt" %>
<%@include file="db.jsp" %>
<%
try{
    String un=session.getAttribute("bname").toString();
    session.setAttribute("bname", un);
%> <%
String vall=request.getParameter("vall");
if(vall != null){
if(vall.equals("12")){

    String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String uid=request.getParameter("uid");
PreparedStatement ps=co.prepareStatement("update FILES set brokerstatus='Uploading', offer='process' where  fid='"+fid+"' and usid='"+uid+"' ");
int ii=ps.executeUpdate();
if(ii !=0)
{%>
<script>
    alert("File acceptd Sueccssfully");
    window.location="bufile.jsp";
</script>

<%}
}
}

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
			<li><a href="bhome.jsp">Home</a></li>
			<li><a href="bufile.jsp">User File Request</a></li>
			<li  class="active"><a href="bpolicies.jsp">View User price Policies </a></li>
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
			<span class="step" style="color:#ff6666"><a>2</a> price Policies </span>
			<span class="step"><a>3</a> Storage capacity</span>
			<span class="step"><a>4</a> Graph </span>
                        <span class="step" style="color:#00ff00"><a>5</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">
            <center>
                 <table align="center">
 <tr> <th> File_ID</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> File_Name</th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Key </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Size </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Date </th><th> &nbsp;&nbsp;&nbsp; </th>
     <th> Server_Status</th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Package </th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th> Price</th> <th> &nbsp;&nbsp;&nbsp; </th>
     <th>Action</th> </tr>

 <tr> <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td> <td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp;</td> <td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td> &nbsp;&nbsp;&nbsp; </td>
    </tr>


<%

ResultSet rs= st.executeQuery("SELECT f.fid,f.USID, f.UNAME, f.FNAME, f.KEY, f.FSIZE, f.FDATE, f.PROVIDERSTATUS, c.PROVIDERNAME, c.PACKAGE, c.PRICE FROM files f , CLOUDOFFERS c WHERE f.fid = c.fid AND OFFER='Processing' order by f.fid ");
while(rs.next())
{%>

<tr> <td> <%=rs.getString(1)%></td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(4)%></td> <td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=EncryptDecrypt.encrypt(rs.getString(5))%></td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(6)%> </td><td> &nbsp;&nbsp;&nbsp; </td>
    <td> <%=rs.getString(7)%>  </td> <td> &nbsp;&nbsp;&nbsp; </td>
    <%String stu=rs.getString(8);
                        if(stu.equals("processing")){%>  <td style="color:#ff3300;font-size:20px ; font-family:Lucida Fax; font-style:italic;"><%=rs.getString(8)%>   </td>
                                           <td> &nbsp;&nbsp;&nbsp; </td>  <%}else if(stu.equals("Uploading")){%>
                                             <td style="color:#cccc00;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(8)%> </td>
                                         <td> &nbsp;&nbsp;&nbsp; </td>    <%
                                             }else if(stu.equals("Uploaded")){%>
                                            <td style="color:#00cc33;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(8)%>  </td>
                                         <td> &nbsp;&nbsp;&nbsp; </td>    <%
                                             }else if(stu.equals("Blocked")){%>
                                            <td style="color:red;font-size:20px ; font-family:Lucida Fax; font-style:italic;"> <%=rs.getString(8)%>  </td>
                                          <td> &nbsp;&nbsp;&nbsp; </td>   <%
                                             }%>
 
                                             <td> <%=rs.getInt(10)%> MB  </td><td> &nbsp;&nbsp;&nbsp; </td>
     <td>RS.<%=rs.getInt(11)%>  </td><td> &nbsp;&nbsp;&nbsp; </td>



                                             



  <td>
                          <form action="bopolices.jsp" method="post">
                    <input type="hidden" name="fid"   value="<%=rs.getString(1)%>"/>
                    <input type="hidden" name="uid" value="<%=rs.getString(2)%>"/>
                    <input type="hidden" name="fname" value="<%=rs.getString(11)%>"/>
                    <input type="submit" value="Sent to Server"/>
                          </form>

                        </td>


</tr>


 <%
}
%>



                  </table>

            </center>






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
    var e=<%=e%>;
    alert("Username is defind null value ::"+e)
    window.location="cuser.jsp";
</script>
<%
}
%>