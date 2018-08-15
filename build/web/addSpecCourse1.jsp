<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
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
        String ctid,ctname,crsid,cname,time,coursedate,loc;
        int i,did,fee;
        %>
        <%
        try{
        String ctid=(String)session.getAttribute("ctid");
        String ctname=(String)session.getAttribute("uname");
        cname=request.getParameter("cname");
        fee=Integer.parseInt(request.getParameter("fee"));
        time=request.getParameter("time");
        loc=request.getParameter("loc");
        coursedate=request.getParameter("coursedate");
            java.util.Date d1 = new java.util.Date(coursedate);
            coursedate= getFormattedDate(d1);
            java.sql.Date coursedate1=utilDateToSqlDate(d1);
            
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select crsid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        crsid="crs00"+i;
        
        pst = con.prepareStatement("insert into speccourse values(?,?,?,?,?,?,?,?)");
        pst.setString(1,ctid);
        pst.setString(2,ctname);
        pst.setString(3,crsid);
        pst.setString(4,cname);
        pst.setString(5,time);
        pst.setDate(6,coursedate1);
        pst.setInt(7,fee);
        pst.setString(8,loc);
        pst.execute();
        %>
        <jsp:include page="addSpecCourse2.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 434px; top: 430px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Special course added successfully</font></h2>
            </font>
            <p>            
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
        <jsp:include page="addSpecCourse.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 433px; top: 428px" id="layer1">
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
