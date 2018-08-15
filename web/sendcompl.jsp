<%@ include file="index1.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
    <script language="javascript">    
        function ismaxlength(obj)
        {
                var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
                if (obj.getAttribute && obj.value.length>mlength)
                obj.value=obj.value.substring(0,mlength)
        }
    </script>
  </head>
<body  >
     <form action="sendcompl1.jsp" method=post name=expo>
    <div style="position: absolute; width: 316px; height: 31px; z-index: 1; left: 540px; top: 327px" id="layer3">
		<u><b><font face="Poor Richard" size="5" color="#A60000">
		Complaints/Grievances</font></b></u></div>
     <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">            
            <div style="position: absolute; width: 683px; height: 173px; z-index: 4; left: 43px; top: 115px" id="layer6">
                <font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Submit your feed back (maximum length : 
                <font face="Times New Roman" color="#008000">450</font> characters only) </font>
                <table border="0" id="table1" width="629">
                    <tr>
                        <td><b><font face="Trebuchet MS">Feed Back</font><font size="4">
                        :</font></b></td>
                        <td><textarea rows="7" name="feedback" cols="56" onkeyup="return ismaxlength(this)" onBlur="return ismaxlength(this)" maxlength="450"></textarea></td>
                    </tr>
                <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Submit Feedback" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Reset" name="B2"></td>
                    </tr>
                </table>
                </div>
        </form>
     <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 957px; top: 373px" id="layer5">
         <font face="Arial Narrow" size="2">
             <b><font color="#00AE2C"><a href="javascript:history.back()">
             <font color="#000000">Back</font></a></font></b>
         </font>
     </div></div>
     </body>
</html>
