<%@ include file="index1.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  
<head>
	<style>
	div,input,textarea { font-family:Tahoma; font-size:8pt; }
	input.std { width:200; }
	div.frame { padding-left:70; }
	</style>
</head>
<body>

<div class="frame">
</div>

    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


    <div style="position: absolute; width: 629px; height: 70px; z-index: 3; left: 79px; top: 44px" id="layer4" align="center">
	<form action="SendMail.jsp" method="post">
	<p align="left">To :<br>
	<input type="text" name="to" class="std">(Please sepcify ,(comma) to seperate more than 1 email-id)</input><br>
	From :<br>
	<input type="text" name="from" value="gnitsfbscs@gmail.com" readonly class="std"></input><br>
	Subject :<br>
	<input type="text" name="subject" class="std"></input><br>
	Message :<br>
	<textarea rows="10" cols="80" name="message"></textarea>
	<br>
	<input type="submit" value="Send"></input>
	</p>
	</form>
		
		
		</div>
  

			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 646px; top: 37px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
  
  </body>
</html>