<%@ include file="index1.jsp"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
    </head>
    <body>
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">

        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String uname,feedback,emp,back,rate,mobile,email;
        %>
        <%
        utype=(String)session.getAttribute("utype");
        emp=(String)session.getAttribute("uname");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select * from feedback");
        if(utype.equals("admin"))
            back="adminlogin.jsp";
        else if(utype.equals("ctrainer"))
            back="ctrainerlogin.jsp";
        else if(utype.equals("institute"))
            back="institutelogin.jsp";
        %>
        <div style="position: absolute; width: 31px; height: 18px; z-index: 7; left: 708px; top: 81px" id="layer10">
        <b><a href=<%=back%>><font face="Tahoma" size="2" color="#2D2E32">Back</font></a></b></div>
        
        <div style="position: absolute; width: 717px; height: 236px; z-index: 3; left: 20px; top: 111px" id="layer1">
        <table border="2" width="100%" id="table1" bordercolorlight="#993366">
                <tr>
                    <td><b><font face="Tahoma" size="2">User Name</font></b></td>
                    <td><b><font face="Tahoma" size="2">Feedback</font></b></td>
                    <td><b><font face="Tahoma" size="2">Rating</font></b></td>
                    <td><b><font face="Tahoma" size="2">Mobile</font></b></td>
                    <td><b><font face="Tahoma" size="2">Email</font></b></td>
                </tr>
                <%
                while(rs.next())
                {
                    uname=rs.getString(1);
                    feedback=rs.getString(2);
                   rate=rs.getString(3);
                   mobile=rs.getString(4);
                   email=rs.getString(5);
                %>
                <tr>
                    <td><font face="Tahoma" color="#2D2E32" size="2"><%=uname%></font></td>
                    <td><font face="Tahoma" color="#2D2E32" size="2"><%=feedback%></font></td>
                    <td><font face="Tahoma" color="#2D2E32" size="2"><%=rate%></td>
                    <td><font face="Tahoma" color="#2D2E32" size="2"><%=mobile%></td>
                    <td><font face="Tahoma" color="#2D2E32" size="2"><%=email%></td>
                </tr>
                <%
                }
                %>
            </table>
        </div>

           <div style="position: absolute; width: 256px; height: 25px; z-index: 4; left: 262px; top: 49px" id="layer6">
				<b><font face="Arial" size="4" color="#F5A625">Student 
				Feedback</font></b></div>  

<p>&nbsp;</p>
 </div>
 </body>
</html>