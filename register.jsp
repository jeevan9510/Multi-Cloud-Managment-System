<%-- 
    Document   : register
    Created on : Jul 27, 2015, 2:51:11 PM
    Author     : hari
--%>
<%@include file="db.jsp" %>
<%
String va=request.getParameter("va");
if(va != null)
{
    if(va.equals("1"))
{

String name=request.getParameter("f1");
String email=request.getParameter("f3");
String pa=request.getParameter("f4");
String gender=request.getParameter("f6");
String dob=request.getParameter("f7");
String phone=request.getParameter("phone");

ResultSet rs= st.executeQuery("select count(*) from users");
rs.next();
int id=rs.getInt(1)+1;
String uid="UserID-"+id;

int i=st.executeUpdate("insert into users values('"+uid+"','"+name+"','"+email+"','"+pa+"','"+gender+"','"+dob+"','"+phone+"')");
if(i!=0)
{%>
<script>
    alert("Registration Sueccssfully")
    window.location="register.jsp";
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

<script type="text/javaScript" >
function validate()
{
   var x = document.f.gender;
   if(document.f.f1.value=="")
   {
       alert("Please Enter Ur User Name");
       document.f.f1.focus();
       return false;
   }

                 else if(document.f.f3.value=="")
                {
                    alert("Enter Valid email");
                    document.f.f3.focus();
                    return false;
                }

                   else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.f.f3.value)))
                   {
				alert("Please enter valid Email(Eg: you@example.com)");
				document.f.f3.focus();
				return false;
			} else if(document.f.f4.value=="" || document.f.f4.length<6)
                    {
                        alert("Please Enter password and should not less than length 6 character");
                        document.f.f4.focus();
                        return false;
                    }
 else if(document.f.f5.value=="" || document.f.f5.length<6)
                    {
                        alert("Please confirm password and should not less than length 6 character");
                        document.f.f5.focus();
                     //   if(f5.equals(f4)=-1)
                        return false;
                    }
                    else if(!(document.f.f5.value==document.f.f5.value))
                        {

                            alert("password and confirm password should be matched");
                            return false;

                        }
 else if(document.f.f6[0].checked==false && document.f.f6[1].checked==false)
                     {
                        alert("Select gender");
                        return false;

                     }

                     else if(document.f.f7.value=='')
                         {

                            alert("Please Select Date");
                            return false;

                         }





                else if(document.f.phone.value=="")
                    {
                        alert("Enter mobile number");
                        document.f.phone.focus();
                        return false;
                    }

                      else if(isNaN(document.f.phone.value))
                         {
                             alert("Enter only numbers");
                             document.f.phone.focus();
                             return false;
                         }

                    else if(document.f.phone.value.length!=10)
                     {
                        alert("Enter valid phone number");
                        document.f.phone.focus();
                        return false;
                     }

                    else
                        {
                            return true;
                        }
            }


        </script>


</head>
<body>
	<div id="header">
		<h1>A Novel Model For Competition <a href="#">And Cooperation Among Cloud Providers</a></h1>
		<ul id="menu">
			<li><a href="index.jsp">Home</a></li>
			<li class="active"><a href="cuser.jsp">Cloud User</a></li>
			<li><a href="cbroker.jsp">Cloud Broker </a></li>
			<li><a href="csp.jsp">CLoud Service Provider</a></li>
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
			<span class="step"><a>3</a> CLoud Service Provider</span>
		</div>
	</div>

	<div class="wrap">

            <center><h2 style="color:#6666ff;   ">Sign up</h2>
<!--                <form action="cuser.jsp?va=1" method="post">
                <table align="center">
                      <tr> <td> UserName ::  </td>  <td> <input type="text" name="un" required="true"> </td>  </tr>
                      <tr> <td> Password ::  </td>  <td> <input type="password" name="pw" required="true"> </td>  </tr>
                       </table>
                </form>-->

                	<form action="register.jsp?va=1" method="post" name="f"onsubmit="return validate()">
                            <table>
                                <tr><td>User Name </td><td> ::</td><td><input type="text" name="f1"/></td></tr>
                                <tr><td>your email </td><td> ::</td><td><input type="email" name="f3" /></td></tr>
                                <tr><td>password</td><td> ::</td><td><input type="password" name="f4"/></td></tr>
                                <tr><td>confirm password </td><td> ::</td><td><input type="password" name="f5" /></td></tr>
                                <tr><td>gender </td><td> ::</td><td><input type="radio" name="f6" value="male"/>male<input type="radio" name="f6" value="female"/>female</td></tr>
                                <tr><td>Birthday </td><td> ::</td><td><input type="date" name="f7"/> </td></tr>
                                <tr><td>Phone No </td><td> ::</td><td><input type="text" name="phone"/> </td></tr>
                                <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td></td><td><p class="button-style"><input type="submit"  id="x"   name="b2" value="create" align="center"/></p></td></tr>

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