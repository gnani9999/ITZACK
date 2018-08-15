
<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
    <meta http-equiv="Content-Language" content="en-us">
    <title></title>
  </head>
<body  >
<form action="addcourse1.jsp" method="post">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


<div style="position: absolute; width: 266px; height: 78px; z-index: 1; left: 459px; top: 123px" id="layer1">
<img border="0" src="images/course.JPG" width="264" height="77"></div>
<%!
    Connection con;
    Statement st;
    PreparedStatement pst;
    ResultSet rs;
    String fname;
    int i;
%>
<%
     String instid=(String)session.getAttribute("instid");
     Class.forName("oracle.jdbc.driver.OracleDriver");
     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
     st=con.createStatement();
     rs=st.executeQuery("select fname from faculty where instid='"+instid+"'");         
%>
<div style="position: absolute; width: 314px; height: 112px; z-index: 2; left: 114px; top: 98px" id="layer2">
    <table border="0" width="101%" id="table1">
        <tr>
            <td width="156"><b><font face="Verdana" size="2">Course Name</font></b></td>
            <td><input type="text" name="cname" size="20" tabindex="1"></td>
        </tr>
        <tr>
            <td width="156"><b><font face="Verdana" size="2">Fees</font></b></td>
            <td><input name="fee" size="20" tabindex="2"></td>
        </tr>
        <tr>
            <td width="156"><b><font face="Verdana" size="2">Duration</font></b></td>
            <td><input type="text" name="dur" size="20" tabindex="3"></td>
        </tr>
        <tr>
            <td width="156"><b><font face="Verdana" size="2">Faculty</font></b></td>
            <td>
                <input size="1" name="faculty" size="20" tabindex="4">
            </td>
        </tr>
        <tr>
            <td width="156"><b><font face="Verdana" size="2">Location</font></b></td>
            <td><input type="text" name="loc" size="20" tabindex="3"></td>
        </tr>
    </table>
    </p>
</div>
<div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 201px; top: 243px" id="layer3">
    <table border="0" width="100%" id="table2">
        <tr>
            <td>
            <input type="submit" value="Submit" name="submit" tabindex="6"></td>
            <td><input type="reset" value="Reset" name="reset" tabindex="7"></td>
        </tr>
    </table>
</div>  
<div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 262px; top: 27px" id="layer4">
    <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Add Course 
	Information</font></b></u> </font>
</div>  
</div>
</form>
</body>
</html>
