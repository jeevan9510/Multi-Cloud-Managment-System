<%-- 
    Document   : bopolices
    Created on : Sep 4, 2015, 12:29:51 PM
    Author     : hari
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="crypt.EncryptDecrypt" %>
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

                     <% String id= request.getParameter("id");
                       if(id != null )
                      { 
                           if(id.equals("1"))
                      {
                            String fid= request.getParameter("fid");
                            String ut= request.getParameter("UT");
                            PreparedStatement ps= co.prepareStatement("update files set BROKERSTATUS='Accepted',PROVIDERSTATUS='Uploading', OFFER='"+ut+"' where fid='"+fid+"' ");
                            int io =  ps.executeUpdate(); 
                            if(io!=0)
                            {%>
                            <script>
                                alert("Request Has been Sent Sueccssfully")
                                window.location="bpolicies.jsp";
                            </script>
                         <%}
                       } 
                       }
                      String fid= request.getParameter("fid");
                      if(fid != null )
                      {
                      ResultSet rs= st.executeQuery("SELECT f.fid,f.USID, f.UNAME, f.FNAME, f.KEY, f.FSIZE, f.FDATE,c.PACKAGE, c.PRICE FROM files f , CLOUDOFFERS c WHERE f.fid = c.fid AND f.fid ='"+fid+"' order by f.fid ");
while(rs.next()){
                     %>
                      <form action="bopolices.jsp?id=1" method="post">
                           <table align="center">
                     <tr> <th> User_ID</th><th>  <input type="text" name="uid"  readonly  value=" <%=rs.getString(2)%>"/> </th> </tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> User_Name</th><th> <input type="text" name="uname" readonly   value="<%=rs.getString(3)%>"/> </th></tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> File_ID</th><th>   <input type="text" name="fid"  readonly value="<%=rs.getString(1)%>"/> </th> </tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> File_Name </th><th><input type="text" name="fname" readonly  value="<%=rs.getString(4)%>"/> </th> </tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> Key </th> <th>     <input type="text" name="fkey"readonly  value="<%=rs.getString(5)%>"/> </th> </tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> Date </th><th>     <input type="text" name="date" readonly value="<%=rs.getString(7)%>"/> </th></tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> Size </th> <th>    <input type="text" name="fsize" readonly value="<%=rs.getString(6)%>"/> </th> </tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> Package_Plan </th><th> <input type="text" name="packp" readonly value="<%=rs.getString(8)%> MB"/> </th></tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> Price</th> <th>        <input type="text" name="price" readonly value="RS.<%=rs.getString(9)%>"/></th></tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr><tr>
                         <th> User Type</th> <th> <select name="UT" required="true">
                                 <option value=""> select </option>
                                 <option value="rankspace"> Rank space </option>
                                 <option value="google"> Google </option>
                                 <option value="trylogic"> Trylogic </option>
                             </select>       </th></tr><tr><th>&nbsp;&nbsp;&nbsp;</th><th> &nbsp;&nbsp;&nbsp;</th> </tr>


 <tr>     <th> &nbsp;&nbsp;&nbsp;</th><th>
                    <input type="submit" value="Sbmit"/>
                          </th> </tr>
                           </table>
  </form>
 <%
}}
%>




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