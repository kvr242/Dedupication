<%-- 
    Document   : login
    Created on : Oct 30, 2014, 5:47:26 PM
    Author     : Raja
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cloud</title>
<meta name="keywords" content="free css, web template, cloudy" />
<meta name="description" content="Cloudy - free website template provided by templatemo.com" />
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/featuredcontentglider.css" />
<script language="javascript" type="text/javascript">

</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="css/featuredcontentglider.js">
/***********************************************
* Featured Content Glider script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/
</script>
</head>
<body>

<div id="templatemo_wrapper_outer">
<div id="templatemo_wrapper">

	<div id="temmplatmeo_header">
    
   		<div id="site_title">
                     
                    <center style="margin-left: 29px;margin-right: -640px ;color: red"> <h1>REAL CLOUD   </h1>   </center>  
           	<!--<a href="http://www.templatemo.com" target="_parent">-->
<!--            	<img src="images/templatemo_logo.png" alt="free css template" />
            	<span>designed by templatemo.com</span>-->
            </a>
        </div>
    
    	<div id="templatemo_menu">
        
            <ul>
                <li><a href="index.jsp" target="_parent">Home</a></li>
                <li><a href=Login.jsp class="current">Login</a></li>
                <li><a href=Newuser.jsp target="_parent"> Registration</a></li>
          		
            </ul>    	
        
        </div> <!-- end of templatemo_menu -->
    
    </div> <!-- end of templatemo_header -->
    
    <div id="templatemo_content_wrapper_top"></div>
    <div id="templatemo_content_wrapper">
    
    	
    
        <div id="templatemo_banner"><span class="frame"></span>
        
			<script type="text/javascript">
    
            featuredcontentglider.init({
                gliderid: "canadaprovinces", //ID of main glider container
                contentclass: "glidecontent", //Shared CSS class name of each glider content
                togglerid: "p-select", //ID of toggler container
                remotecontent: "", //Get gliding contents from external file on server? "filename" or "" to disable
                selected: 0, //Default selected content index (0=1st)
                persiststate: false, //Remember last content shown within browser session (true/false)?
                speed: 500, //Glide animation duration (in milliseconds)
                direction: "rightleft", //set direction of glide: "updown", "downup", "leftright", or "rightleft"
                autorotate: true, //Auto rotate contents (true/false)?
                autorotateconfig: [3000, 2] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]
            }
                    );
            
            </script>
            
            <div id="canadaprovinces" class="glidecontentwrapper">
            
            <div class="glidecontent">
                <!--<img src="images/templatemo_image_01.jpg" alt="bird" />-->
                 <img src="images/3.jpg" alt="image" />
            </div>
            
            <div class="glidecontent">
            <img src="images/2.jpg" alt="image" />
            </div>
            
            <div class="glidecontent">
            <img src="images/4.jpg" alt="image" />
            </div>
            
            </div>
            
            <div id="p-select" class="cssbuttonstoggler">
            <a href="#" class="toc"><span>1</span></a> <a href="#" class="toc"><span>2</span></a> <a href="#" class="toc"><span>3</span></a>
            
            </div>
        
        
        </div> <!-- end of templatemo_banner -->
    	    <form action="Login2" method="post">
                <div style="float:left; color: #cccccc ;margin-left:30px; ">

        <img src="images1/Login.jpg" alt="image" width="550"  ></img>
  
    </div>
<div class="login-card">
   <%
String s=request.getAttribute("msg1")!=null?request.getAttribute("msg1").toString():"";
String s1=request.getAttribute("msg")!=null?request.getAttribute("msg").toString():"";
String s3=request.getAttribute("name")!=null?request.getAttribute("name" ).toString():"";
String s4=request.getAttribute("pwd")!=null?request.getAttribute("pwd" ).toString():"";

%>
  <p style=" color:orangered ;font-size: large;font:bold ">   <%=s%> </p>

    <h1>Log-in</h1><br>
  <form>
      <input type="text" name="name" value="name" placeholder="Username">
          <input type="password" name="pwd" value="name" placeholder="Password">
        <select  input type="text" name="type" placeholder="User Type">
              <!--<select name="type">-->
<option value="Server">Server</option>
<option value="user">User Login</option>     
<option value="admin">Service Provider</option>
<option value="tpa">Third Parity Auditor</option><br>
</select>
  <br>  <input type="submit" name="login" class="login login-submit" value="login">
  </form>
<%
if(s1!=null)
       {
    %>
    <p style=" color:orangered ;font-size: large;font:bold ">   <%=s1%> </p>
<a style="color:blue;margin-left:180px;font-size: larger;font: bold "href="contacttpa.jsp">TPAContact</a>
<%}%>
  <div class="login-help">
<!--    <a href="#">Register</a> ? <a href="#">Forgot Password</a>-->
  </div>
</div>
    

</div><div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer">
   	    Copyright © 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></div>
</div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>