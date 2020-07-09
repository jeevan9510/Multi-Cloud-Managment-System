<%-- 
    Document   : cupfile
    Created on : Jul 28, 2015, 5:14:49 PM
    Author     : hari
--%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
 
<%@include file="db.jsp" %>
<%
try{
    String un=session.getAttribute("uname").toString();
    session.setAttribute("uname", un);
   String va=request.getParameter("va");
if(va != null)
{ if(va.equals("1")){


         DiskFileItemFactory dff = new DiskFileItemFactory();
        
         ServletFileUpload disk = new ServletFileUpload(dff);
//DiskFileUpload factory=new DiskFileUpload();

           // List lst =factory.parseRequest(request);
             List lst = disk.parseRequest(request);

            FileItem f0 = (FileItem) lst.get(0);
            FileItem f1 = (FileItem) lst.get(1);
            FileItem f2 = (FileItem) lst.get(2); 
   String fnme = f0.getString();
  System.out.println("fname ::"+fnme);
  String key = f1.getString();  System.out.println("file key ::"+key);
  String filename = f2.getName();
  System.out.println("filename ::"+filename);

long length = filename.length();

float bytes = filename.length();
       //(double)fileSize/1024
  System.out.println("long  ::"+length);

  System.out.println("by  ::"+bytes);

  System.out.println("kb  ::"+(double)length/1024);//
  
  System.out.println("mb  ::"+(double)length/(1024*1024));



// long lo= getFileSize(filename);

double kilobytes = (bytes / 1024);
float kilobyte = (bytes / 1024);

float megabytes = (kilobyte / 1024);

//float mb= Float.parseFloat(megabytes);
//String size=""+megabytes;


  System.out.println("long  ::"+length);
  System.out.println("bytes  ::"+bytes);
  System.out.println("kilobytes  ::"+kilobytes); 
  Date date = new Date();
  System.out.println("date ::"+date);

String dd=""+date;


ResultSet rs= st.executeQuery("select USERID from users where UNAME='"+un+"'");
rs.next();
String uid=rs.getString(1);
  System.out.println("uid ::"+uid);


ResultSet rs1= st.executeQuery("select count(*) from FILES");
rs1.next();
int id=rs1.getInt(1)+1;
String fid="FID-"+id;

  System.out.println("fid ::"+fid);

String path=request.getRealPath("files");
File f= new File(path+"\\"+filename);
f2.write(f);
 FileInputStream fis=new FileInputStream(f);
          int j=fis.available() ;


String size=""+j;


  System.out.println("size mb ::"+size);
  System.out.println("pathpath ::"+path);

PreparedStatement ps=co.prepareStatement("insert into FILES values(?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, fid);
ps.setString(2, uid);
ps.setString(3, un);
ps.setString(4, fnme);
ps.setString(5, key);
ps.setString(6, size);
ps.setString(7, dd);
ps.setString(8, "processing");
ps.setString(9, "processing");
ps.setString(10, "processing");
ps.setString(11, filename);
int i=ps.executeUpdate();
if(1!=0)
{%>
<script>
    alert("Uploaded Sueccssfully")
    window.location="cupfile.jsp";
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
			<li><a href="uhome.jsp">Home</a></li>
			<li class="active"><a href="cupfile.jsp">Upload File</a></li>
			<li><a href="cvfiles.jsp">View File Status </a></li>
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
			<span class="step" style="color:#ff6666"><a>1</a> Upload File</span>
			<span class="step"><a>2</a> View File Status </span>
			<span class="step"><a>3</a> Download files</span>
                        <span class="step" style="color:#00ff00"><a>4</a> Welcome to <%=un%></span>
		</div>
	</div>

	<div class="wrap">
<%
Random r=new Random();
String s[]={"A","Q","F","1","4","6","8","5","S","U","D","H","A","R","S","H","A","N","R","E","Y","T","7","M","P"};
          int i1=r.nextInt(8);
     int j1=r.nextInt(s.length-1);
     int k1=r.nextInt(s.length-2);
     int m1=r.nextInt(s.length-3);
     String c11=s[i1];
     String c21=s[j1];
     String c31=s[k1];
     String c41=s[m1];
     String key=c11+c21+c31+c41;    System.out.println("file key   ::"+key);

%>
              <center><h2 style="color:#6666ff">Upload Form</h2>
                  <form action="cupfile.jsp?va=1" enctype="multipart/form-data" method="post">
                <table align="center">
                    
                      <tr> <td> File Name ::  </td>  <td> <input type="text" name="un"required="true"> </td>  </tr>

                      <tr> <td> File Key ::  </td>  <td> <input type="text" name="key" value="<%=key%>" required="true"> </td>  </tr>

                      <tr> <td> File  ::  </td>  <td> <input type="file" name="file" required="true"> </td>  </tr>

                         <tr> <td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>  <td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>  </tr>
                      <tr> <td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input type="submit" value="Upload" > </td>  <td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <input type="reset" value="reset"> </td>  </tr>
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