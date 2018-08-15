<%@ include file="index1.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta http-equiv="Content-Language" content="en-us">
    <title></title>
    <script type="text/javascript" src="JS/country.js"></script>      
        <script language="JavaScript" src="JS/calendar_us.js"></script>
	<link rel="stylesheet" href="JS/calendar.css">

  </head>
<body  >
     <form action="addSpecCourse1.jsp" method="post" name="itzack">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


     <div style="position: absolute; width: 266px; height: 187px; z-index: 1; left: 439px; top: 117px" id="layer1">
     <img border="0" src="images/Faculty1.jpg" width="265" height="188"></div>
     <div style="position: absolute; width: 346px; height: 112px; z-index: 2; left: 25px; top: 122px" id="layer2">
         <table border="0" width="101%" id="table1">
             <tr>
                 <td width="139"><b><font face="Verdana" size="2">Course Name</font></b></td>
                 <td><input type="text" name="cname" size="20" tabindex="1"></td>
             </tr>
             <tr>
                 <td width="139"><b><font face="Verdana" size="2">Fee</font></b></td>
                 <td><input type="text" name="fee" size="20" tabindex="2"></td>
             </tr>
             <tr>
                 <td width="139"><b><font face="Verdana" size="2">Time</font></b></td>
                 <td><input name="time" size="20" tabindex="3"></td>
             </tr>
             <tr>
                 <td width="139"><b><font face="Verdana" size="2">Date</font></b></td>
                 <td>
                    <input type="text" name="coursedate" size="20" tabindex="4"></font>
                    <script language="JavaScript">
                                                    new tcal ({'formname': 'itzack','controlname': 'coursedate'});
                    </script></td>
             </tr>
             <tr>
                 <td width="139"><b><font face="Verdana" size="2">Location</font></b></td>
                 <td><input name="loc" size="20" tabindex="3"></td>
             </tr>
         </table>
         </p>
     </div>
     <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 103px; top: 278px" id="layer3">
         <table border="0" width="100%" id="table2">
             <tr>
                 <td>
                 <input type="submit" value="Submit" name="submit" tabindex="5"></td>
                 <td><input type="reset" value="Reset" name="reset" tabindex="6"></td>
             </tr>
         </table>
     </div>  
     <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 262px; top: 27px" id="layer4">
         <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Add 
			Special Course</font></b></u> </font>
     </div>  
     <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 677px; top: 79px" id="layer5">
         <font face="Arial Narrow" size="2">
             <b><font color="#00AE2C"><a href="javascript:history.back()">
             <font color="#000000">Back</font></a></font></b>
         </font>
     </div></div>
     </form>
     </body>
</html>
