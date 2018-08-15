<%@ include file="index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
<script>
function validate()
{
  var st="";
  var i=0;
	if(document.itzack.fname.value.length==0)
	{
	    st+="\n First Name";
	    i++;
	}
	if(document.itzack.lname.value.length==0)
	{
	    st+="\n Last Name";
	    i++;
	}
	if(document.itzack.uname.value.length==0)
	{
	    st+="\n User Name";
	    i++;
	}
	if(document.itzack.pwd.value.length==0)
	{
	    st+="\n Password";
	    i++;
	}
	if(document.itzack.mobile.value.length==0)
	{
	    st+="\n Mobile Number";
	    i++;
	}
	if(document.itzack.email.value.length==0)
	{
	    st+="\n Email ID";
	    i++;
	}
	if(document.itzack.addr.value.length==0)
	{
	    st+="\n Address";
	    i++;
	}
	if(document.itzack.qual.value.length==0)
	{
	    st+="\n Qualification";
	    i++;
	}
	if(document.itzack.inst.value.length==0)
	{
	    st+="\n Institution";
	    i++;
	}
	if(document.itzack.pout.value.length==0)
	{
	    st+="\n Passed out Year";
	    i++;
	}
	if(document.itzack.aggr.value.length==0)
	{
	    st+="\n Aggregate";
	    i++;
	}
	if(i==0)
	{
	   document.action="stdreg1.jsp";
	   document.submit();
	   return true;
	}
	else
	{
	   alert("Please enter the below Fields...\n"+st);
	   return false;
	}
}
</script>
  </head>
<body  >
    <form action="stdreg1.jsp" method="post" name="itzack"  onsubmit="return validate()" >  
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


        <div style="position: absolute; width: 202px; height: 202px; z-index: 1; left: 531px; top: 156px" id="layer1">
        <img border="0" src="images/home_regStudent.jpg" width="200" height="247"></div>
        <div style="position: absolute; width: 366px; height: 345px; z-index: 2; left: 76px; top: 112px" id="layer2">
            <table border="0" width="100%" id="table1">
                <tr>
                    <td width="49%"><u>
                            <font face="Verdana" size="2" color="#A60000"><b>Personnel 
                    Details</b></font></u></td>
                    <td width="46%">&nbsp;</td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">First Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="fname" size="20" tabindex="1"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Last Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="lname" size="20" tabindex="2"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">User Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="uname" size="20" tabindex="3"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Password</font></b></td>
                    <td width="46%">
                    <input type="password" name="pwd" size="20" tabindex="4"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Mobile</font></b></td>
                    <td width="46%">
                    <input type="text" name="mobile" size="20" tabindex="5"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Email Id</font></b></td>
                    <td width="46%">
                    <input type="text" name="email" size="20" tabindex="6"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Address</font></b></td>
                    <td width="46%">
                    <textarea rows="2" name="addr" cols="20" tabindex="7"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><u>
                            <font face="Verdana" size="2" color="#A60000"><b>Education 
                    Details</b></font></u></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Highest 
                    Qualification</font></b></td>
                    <td width="46%">
                    <input type="text" name="qual" size="20" tabindex="8"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Institution</font></b></td>
                    <td width="46%">
                    <input type="text" name="inst" size="20" tabindex="9"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Passed Out Year</font></b></td>
                    <td width="46%">
                    <input type="text" name="pout" size="20" tabindex="10"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Aggregate 
                    Percentage </font></b></td>
                    <td width="46%">
                    <input type="text" name="aggr" size="20" tabindex="11"></td>
                </tr>
            </table>
        </div>
        <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 319px; top: 473px" id="layer3">
            <table border="0" width="100%" id="table2">
                <tr>
                    <td>
                    <input type="submit" value="Submit" name="submit" tabindex="12"></td>
                    <td><input type="reset" value="Reset" name="reset" tabindex="13"></td>
                </tr>
            </table>
        </div>  
        <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 300px; top: 41px" id="layer4">
            <u><b><font face="Poor Richard" size="5" color="#A60000">Student 
            Registration</font></b></u>
    </div>  
			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 636px; top: 110px" id="layer5">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div></div>
    </form>
  </body>
</html>
