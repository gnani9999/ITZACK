
<%@ page import="java.sql.*" %>
<html>
  <head>
    <meta http-equiv="Content-Language" content="en-us">
    <title>ITZACK</title>
  </head>
  <body>
  
  <div style="position: absolute; width: 1345px; height: 927px; z-index: 1; left: 1px; top: 0px" id="layer1">
	<img border="0"  src="images/Page-BgGradient.png" width="265" height="99"><img border="0" src="images/Page-BgGradient.png" width="265" height="99"><img border="0" src="images/Page-BgGradient.png" width="265" height="99"><img border="0" src="images/Page-BgGradient.png" width="265" height="99"><img border="0" src="images/Page-BgGradient.png" width="284" height="99">
        <div style="position: absolute; width: 1345px; height: 826px; z-index: 3; left: 0px; top: 99px" id="layer4">
<div style="position: absolute; width: 1000px; height: 243px; z-index: 1; left: 299px; top: -50px" id="layer5">
	<div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: -1px; top: 251px" id="layer6">
	
	<div style="position: absolute; width: 796px; height: 40px; z-index: 1; left: 0px; top: 17px" id="layer9">
		<p align="center"><b>
		<font face="Rockwell" size="6" color="#D98A06">Advertisements</font></b>
        </div>
	
        <div style="position: absolute; width: 692px; height: 382px; z-index: 2; left: 56px; top: 130px" id="layer10">        
        <table width="100%" id="table2">
	    <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String addid,uname,addname,adddescr;
        int i=1;
        %> 
        <%
        String uname=(String)session.getAttribute("uname");
        addname=request.getParameter("addname");
        adddescr=request.getParameter("adddescr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select * from advertisement");
        while(rs.next())
        {  
          addid=rs.getString(1);
          uname=rs.getString(2);
          addname=rs.getString(3);
          adddescr=rs.getString(4);
        %>
			<tr>
				<td height="85" bordercolorlight="#D98A06" bordercolordark="#D98A06"><b>
                                <font face="Aparajita" color="#808080" size="5"><%=i%>&nbsp;.&nbsp;<%=adddescr%></font></b></td>
			</tr>
        <% 
        i++;
        }
        %>
		</table>
        
        </div>
		<img border="0" src="images/Page-BgTexture.png" width="758" height="564"></div>
	<div style="position: absolute; width: 158px; height: 46px; z-index: 2; left: 328px; top: 107px" id="layer7">
		<font face="Sketch Block" size="30" color="#FFFFFF">ITZACK</font>
        </div>
	<div style="position: absolute; width: 650px; height: 17px; z-index: 3; left: 119px; top: 227px" id="layer8">
		<table border="0" width="100%" id="table1">
			<tr>
				<td width="99"><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index2.jsp"><font color="#FFFFFF">
				<span style="text-decoration: none">Home</span></font></a></font></b></td>
				<td width="57"><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="login.jsp?utype=admin"><span style="text-decoration: none">
				<font color="#FFFFFF">Admin</font></span></a></font></b></td>
				<td width="107"><b>
				<font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="login.jsp?utype=ctrainer"><span style="text-decoration: none">
				<font color="#FFFFFF">Corporate Trainer</font></span></a></font></b></td>
				<td width="62"><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="login.jsp?utype=institute"><span style="text-decoration: none">
				<font color="#FFFFFF">Institute</font></span></a></font></b></td>
				<td width="64"><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="login.jsp?utype=student"><span style="text-decoration: none">
				<font color="#FFFFFF">Student</font></span></a></font></b></td>
				<td width="96"><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="login.jsp?utype=adv"><font color="#FFFFFF">
				<span style="text-decoration: none">Advertisements</span></font></a></font></b></td>
				<td><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="noticeBoard.jsp"><font color="#FFFFFF">Notice Board</font></a></font></b></td>
				<td><b><font face="Arial Narrow" size="2" color="#FFFFFF">
				<a href="registration.jsp"><font color="#FFFFFF">
				<span style="text-decoration: none">Register</span></font></a></font></b></td>
			</tr>
		</table>
	</div>	<p><img border="0" src="images/Head.jpg" width="764" height="250"></div>
<img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="211" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="211" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="189"><img border="0" src="images/Page-BgTexture.png" width="211" height="189"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="189" height="259"><img border="0" src="images/Page-BgTexture.png" width="209" height="259"></div>
	</div>
  
  </body>
</html>