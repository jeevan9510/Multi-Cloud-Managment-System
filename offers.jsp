<%-- 
    Document   : offers
    Created on : Aug 31, 2015, 4:10:56 PM
    Author     : hari
--%>

<%@page import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "cloudprovider", "cloudprovider");
Statement st=co.createStatement();


String vall=request.getParameter("val");  System.out.println("output vall::"+vall);//s

    String fi=request.getParameter("fi"); System.out.println("output fi::"+fi);//s
    String pro=request.getParameter("p"); System.out.println("output pro::"+pro);//s
    String pack=request.getParameter("pack"); System.out.println("output pack::"+pack);//s
    int pa=Integer.parseInt(pack);
    String Price=request.getParameter("Price"); System.out.println("output price::"+ Price); //s
    int pri=Integer.parseInt(Price);
PreparedStatement pr=co.prepareStatement("insert into CLOUDOFFERS values(?,?,?,?) ");
pr.setString(1, fi);
pr.setString(2, pro);
pr.setInt(3, pa);
pr.setInt(4, pri);
    int io=pr.executeUpdate();
    if(io!=0 )
    {
PreparedStatement ps=co.prepareStatement("update FILES set brokerstatus='Uploading', offer='Processing' where  fid='"+fi+"' ");
int ii=ps.executeUpdate();

       %>
<script>
    alert("Sueccssfully added into Cloud offer")
    window.location="cvfiles.jsp";
</script>

<% }   %>