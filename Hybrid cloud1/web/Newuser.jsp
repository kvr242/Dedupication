<%-- 
    Document   : Registration
    Created on : Oct 31, 2014, 11:18:11 AM
    Author     : Raja
--%>

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
<!--<style>
    .login-card{ float: left;}
</style>-->
</head>
<body>

<div id="templatemo_wrapper_outer">
<div id="templatemo_wrapper">

	<div id="temmplatmeo_header">
    
   		<div id="site_title">
                     
                    <center style="margin-left: 29px;margin-right: -640px ;color: red"> <h1>REAL CLOUD   </h1>   </center>  
            </a>
        </div>
    
    	<div id="templatemo_menu">
        
            <ul>
                <li><a href="index.jsp" target="_parent">Home</a></li>
                <li><a href=Login.jsp target="_parent">Login</a></li>
                <li><a href=Newuser.jsp class="current"> Registration</a></li>
          		
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
                 <img src="images/1.jpg" alt="image" />
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
    	     <form action="Newuser" method="post">
                 <div  style="float:left; margin-left: 50px;">
    
         <img src="images1/1.jpg" alt="image" width="350"  />
  
    </div>
                 <div class="login-card" style="size:480Spx;">
    <h1 style="color: red">Registration Form</h1><br>
  </form>
<!--    <input type="text" name="user" placeholder="Username">
    <input type="password" name="pass" placeholder="Password">
    <input type="submit" name="login" class="login login-submit" value="login">-->
        Enter your id:<input  type="text" name="id" required="" style="border-radius:20px"/> 
   Enter your Name: <input type="text" name="name" required="" style="border-radius:20px"/> 
    Enter your password:<input type="password" name="pwd" required="" style="border-radius:20px" />

Enter your city:<input type="text" name="city" required="" style="border-radius:20px"/>

Enter your Mail id :<input type="mail" name="mid" required="" style="border-radius:20px"/>
   Enter your Private Key:  :<input type="mail" name="pkey" required="" style="border-radius:20px"/>
 
  <input type="submit" name="login" class="login login-submit" value="Submit">

  </form>

  <div class="login-help">
  </div>
</div>
    

</div><div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer">
   	    Copyright � 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></div>
</div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>