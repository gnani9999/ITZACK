<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body  >

   <%!
        public static final DateFormat utilDateFormatter = new SimpleDateFormat("dd-MM-yyyy");
        public static final DateFormat sqlDateFormatter = new SimpleDateFormat("yyyy-MM-dd");
   %>
   <%!
        public static java.sql.Date utilDateToSqlDate(java.util.Date uDate) throws ParseException
        {
             return java.sql.Date.valueOf(sqlDateFormatter.format(uDate));
        }
  %>
  <% java.util.Locale locale = request.getLocale(); %>    
  <%! 
        String getFormattedDate(java.util.Date d)
        {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM/dd/yy hh:mm:ss");
        return simpleDate.format(d);
        }
      %>   
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String instid,cname,time,demodate;
        int i,did;
        %>
        <%
        try{
        String instid=(String)session.getAttribute("instid");
        cname=request.getParameter("cname");
        time=request.getParameter("time");
        demodate=request.getParameter("demodate");
            java.util.Date d1 = new java.util.Date(demodate);
            demodate = getFormattedDate(d1);
            java.sql.Date demodate1=utilDateToSqlDate(d1);
            
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select did.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        did=i;
        
        pst = con.prepareStatement("insert into demo values(?,?,?,?,?)");
        pst.setString(1,instid);
        pst.setInt(2,did);
        pst.setString(3,cname);
        pst.setString(4,time);
        pst.setDate(5,demodate1);
        pst.execute();
        %>
        <jsp:include page="adddemo.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 358px; top: 206px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Demo Class added successfully</font></h2>
            </font>
            <p>            
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
        <jsp:include page="adddemo.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 350px; top: 194px" id="layer1">
           <font size="6" color="#FF0000"> <%
              out.print(e.getMessage());
            %>
            </font>
        	<b>
           <font size="4" color="#FF0000"> Error in Page</font></b><font size="6" color="#FF0000"> 
        </font>
        </div>        
    <%
    }
    %>    
    </body>
</html>
