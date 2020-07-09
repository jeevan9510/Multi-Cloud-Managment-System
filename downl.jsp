<%-- 
    Document   : downl
    Created on : Sep 15, 2015, 1:06:51 PM
    Author     : hari
--%>
 <%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ByteArrayInputStream"%>
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

                
                    <%String vaa=request.getParameter("va");
                    if(vaa != null){  if(vaa.equals("1")){ String fid=request.getParameter("fi");String fname=request.getParameter("fnam"); String key=request.getParameter("key");%>
              <form action="downl.jsp?va=2" method="post">    <table align="center">
                     <tr> <th> File_ID</th><th>  <input type="text"name="fi"  value="<%=fid%>" readonly>  </th></tr><tr>

                        <th> File_Name</th>   <th>  <input type="text"name="fnam"  value="<%=fname%>" readonly> </th></tr><tr>
                        
                        <th> Key </th>      <th>   <input type="text"name="key" required="true"> </th></tr><tr>
                        <th> Action</th>   <td style="color:#ff3300;font-size:12px ; font-family:Lucida Fax; font-style:italic;">
                           
                               
                            <input type="submit" value="Download"> </td> </tr>

 </table></form>

 <%}else if(vaa.equals("2")){
 String fid=request.getParameter("fi");
 String fname=request.getParameter("fnam");
 String key=request.getParameter("key");

ResultSet rs= st.executeQuery("select * from FILES where FID='"+fid+"' and FLOCATION='"+fname+"' and KEY='"+key+"' and PROVIDERSTATUS='Accepted'");
if(rs.next()){


String path=request.getRealPath("files");
File f= new File(path+"\\"+fname);

    FileInputStream fis1=new FileInputStream(f);
byte[] buf=new byte[fis1.available()];
fis1.read(buf);
ByteArrayInputStream bis1=new ByteArrayInputStream(buf);
String filename=fname;
response.reset();
response.setHeader("Content-disposition", "attachment;filename="+filename);
ServletOutputStream os=response.getOutputStream();
byte[] b=new byte[1024];
int len;
while((len=bis1.read(b))>0)
{
   os.write(b,0,len);
}

bis1.close();
response.getOutputStream().flush();
    }
else{
     out.print(" <H3 style='color:RED'><B>Invalid key  :"+key+"<B>  &nbsp;&nbsp; & &nbsp;&nbsp; Check your Server Status </H3>");
      

}
}

 }

%>



                 

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
%>SSS