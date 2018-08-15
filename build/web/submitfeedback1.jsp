<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
 <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String fname,feedback,r1,r2,r3,mobile,email,rate;
        int i,a=0,b=0,c=0;
        double avg;
        %>
       <%
            fname=(String)session.getAttribute("fname");
        feedback=request.getParameter("feedback");
            r1=request.getParameter("R1");
            r2=request.getParameter("R2");
            r3=request.getParameter("R3");
            mobile=request.getParameter("phn");
            email=request.getParameter("email");
            
            if(r1.equals(null)){r1="no";}
            if(r2.equals(null)){r2="no";}
            if(r3.equals(null)){r3="no";}
            
            
            if(r1.equals("yes"))
                {a=1;}
            if(r2.equals("yes"))
                {b=1;}
             if(r3.equals("yes"))
                {c=1;}
            
            avg=(a+b+c);
            
            if(avg<2)
                rate="Poor";
                else if(avg>2)
                    rate="Excellent";
                    else if(avg==2)
                        rate="Good";
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();

            pst=con.prepareStatement("insert into feedback values(?,?,?,?,?)");
            pst.setString(1,fname);
            pst.setString(2,feedback);
            pst.setString(3,rate);
            pst.setString(4,mobile);
            pst.setString(5,email);
            pst.execute();                  
        %>
            <jsp:include page="feedForm.jsp"></jsp:include>
        <div style="position: absolute; width: 380px; height: 29px; z-index: 3; left: 443px; top: 250px" id="layer3">
			<b><font face="Tahoma" size="2" color="#17CA1C">Feedback Submitted successfully...</font></b></div>
