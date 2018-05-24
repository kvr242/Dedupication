<%-- 
    Document   : Download
    Created on : Nov 4, 2014, 2:23:20 PM
    Author     : Raja
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cloud</title>
<meta name="keywords" content="free css, web template, cloudy" />
<meta name="description" content="Cloudy - free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/featuredcontentglider.css" />
 <link href="css/style_2.css" rel="stylesheet" type="text/css" />
 <link href="style.css" rel="stylesheet" type="text/css" />
 
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

            </a>
        </div>
    
    	<div id="templatemo_menu">
        
            <ul>
                <li><a href="index.jsp" class="current">Log Out</a></li>
            
               
          		
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
                 <img src="images/header-bg.jpg" alt="image" />
            </div>
            
            <div class="glidecontent">
            <img src="images/templatemo_image_02.jpg" alt="image" />
            </div>
            
            <div class="glidecontent">
            <img src="images/templatemo_image_03.jpg" alt="image" />
            </div>
            
            </div>
            
            <div id="p-select" class="cssbuttonstoggler">
            <a href="#" class="toc"><span>1</span></a> <a href="#" class="toc"><span>2</span></a> <a href="#" class="toc"><span>3</span></a>
            
            </div>
        
        
        </div> <!-- end of templatemo_banner -->
    	<div >     
        <tr>
            <td><table   style="width: 930px;" border="0" bgcolor="#999999" >
      <tr>
          <td width="149"><div align="center" class="style1" > <li class ="selected"><a href="Viewprofile.jsp"><strong style="font-size: 17px; ;color: greenyellow">Profile</strong></a></li></div></td>
     
          <td width="149"><div align="center" class="style1" > <a href="Fileview.jsp"><strong style="font-size: 17px; ;color: greenyellow">View Files</strong></a></div></td>
        <td width="166"><div align="center" class="style1"><a href="Adminresponse.jsp"><strong style="font-size: 17px;color: greenyellow ">Request Status</strong></a></div></td>
        <td width="168"><div align="center" class="style1"><a href="Download.jsp"><strong style="font-size: 17px;color: greenyellow">File Download</strong></a></div></td>
        
      </tr>
    </table></td>
  </tr></div>
        <br>
        </br>
<!--        <div>    <img width="400" height="200" src="images1/download.jpg" alt="" style="border-radius:20px" ></img></div>-->
      <form action="downloadfile" method="post">
<%
    //String userid1,path1,FileName1;    
    int i=1;
        try
        {          
                       String uid=(String)session.getAttribute("uid1");
  
//MODIFICATION 1 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 1 (END)...  
		//PreparedStatement pr=con.prepareStatement("select * from Reg");
            String sa="select * from requestst where userid='"+uid+"' and Response='Done'";
            PreparedStatement pr=con1.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
            
            ArrayList Fname=new ArrayList();
          %>
            <br>
                <br>    <br>    
                             <div>
        <% String a=(String) session.getAttribute("uname1");
    %>
        <h4 align="right" style="margin-top:-20px;margin-right: 36px;"> Name : <font color="red"><%=a%></font></h4>
   </div>
            <div align="center">
                <table border="2" bgcolor="pink" style="margin-top: 10px;">
                <tr>
                     <td>S.No</td>
                     <td>File Name</td>
                     <td>File Key</td>
                </tr>
          
                <%
                while(rs.next())
                {
                %>
                <tr>
                    <%
                    String Fname1=rs.getString(3);
                    String key1=rs.getString(4);
                    //request.setAttribute("FName","Fname1");
                    Fname.add(Fname1);
                    Fname.indexOf(i);
                    Date now=new Date();
                    //int d=now;
                    request.setAttribute("TDate","Date");
                    %>
                        <td><%=(i++)%></td> 
                        <td><%=Fname1%></td>
                        <td><%=key1%></td>
                       <!-- <td><font color="white"><input type="radio" name="s" value=</%=Fname1%>>Select for Download<br></font></td>  -->                                    
                
                </tr>    
                     <%
                        }    
                     %>           
            </table><br></br>
           <table bgcolor="lightblue" border="1">
               <tr><td>
           File Name  : <input type="text" name="File"></input>
           <br></br></td></tr>
               <tr><td>
           Public Key  : <input type="password" name="POwner"></input>
           <br></br></td></tr>
               <tr><td>
           Private Key : <input type="password" name="PUser" ></input>
           <br></br></td></tr>
               <tr align="center"><td>
           <input type="submit" value="Download"/>
                   </td></tr>
           </table>
           
            
            </div>
           <%            
            //
                       }
        catch(Exception e)
        {
            System.out.println("Exception"+e);
        }
            
     %>  
    </form>
        </div>
    

        
<div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer">
   	    Copyright © 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></div>
</div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>