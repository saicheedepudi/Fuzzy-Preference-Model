<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Recommendation</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<meta name="keywords" content="Business Website, XHTML CSS Template, Web Design, Free Download" />
<meta name="description" content="Business Website - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style6 {color: #ECECEC}
.style11 {font-size: 14px}
.style13 {color: #42ac1f}
.style14 {font-size: 16px}
-->
</style>
</head>
<body>
	<div id="templatemo_container">    
    	<div id="templatemo_header">
        	<div id="templatemo_logo">
            	<div class="style1" id="templatemo_site_logo">A Fuzzy Preference</div>
                <div id="templatemo_site_slogan">
                	  Tree-Based Recommender System
              </div>
            </div>
        	<div id="templatemo_header_right">
            	<div class="templatemo_email">
                	
                </div>
                
                <div id="templatemo_menu">
				
				     <div class="templaetmo_menu_item projects">
                    	<h1 class="menu_text"><a href="index.html">Home</a></h1>
                        <div class="menu_description">
                        </div>
                    </div>
                	<div class="templaetmo_menu_item organization">
                    	<h1 class="menu_text"><a href="adminLogin.jsp">Admin</a></h1>
                        <div class="menu_description">
                        </div>
                    </div>
                    <div class="templaetmo_menu_item about ">
                    	<h1 class="menu_text"><a href="userLogin.jsp">User</a></h1>
                        <div class="menu_description">
                        </div>
                    </div>
                    <div class="templaetmo_menu_item faq">
                    	<h1 class="menu_text"><a href="aboutProject.html">About Project </a></h1>
                        <div class="menu_description">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="templatemo_content_area">
        	<div id="templatemo_left_section">
            	<div class="templatemo_section_2">
                	
                   
                </div>
            	<div class="templatemo_section_1">
                	<div class="templatemo_h_line">
                    </div>
                    <h1>User Menu </h1>
					 <ul class="sb_menu">
         
          <li><a href="userMain.jsp"><span>User Main</span></a></li>
          <li><a href="userLogin.jsp"><span>Log Out </span></a></li>
          </ul>
                    
                    <div class="cleaner"></div>
                    
                    <div class="templatemo_h_line_2">
                    </div>
                    
                    <h1>Main Concepts</h1>
          <ul class="sb_menu">
          <li><span>Tree Matching</span></li>
          <li><span>Fuzzy Set Techniques</span></li>
          <li><span>Tree-Structured Data Model</span></li>
          <li><span>Data Matching Algorithm</span></li>
          <li><span>Experimental Evalution</span></li>
		  <li><span>Smart Bizseeker</span></li>
          </ul>
                    
                    
                  <div class="cleaner"></div>
                    
                   	<div class="templatemo_h_line_2">
                    </div>
                    
                    <h1>Index Terms</h1>
          <ul class="sb_menu">
          <li><span>E-business</span></li>
          <li><span>fuzzy preferences</span></li>
          <li><span>recommender systems</span></li>
          <li><span>tree matching</span></li>
          <li><span>web-based support system</span></li>
		  </ul>
                    
                   
                    
                    <div class="cleaner"></div>
                   
                    
                </div>
            </div><!-- End Of left -->
            
          <div id="templatemo_right_section">
            	<div class="templatemo_h_line">                </div>
                <h1>Recommend on post <span class="style13"><%=request.getParameter("p_Name")%></span></h1>
                <p class="style6">&nbsp;</p>
                <p> <%

    
      	try 
	{
      		
      		String p_Name="",categorie="";
			p_Name = request.getParameter("p_Name");
			categorie = request.getParameter("categorie");
		
		   %> 
          <p><form action="user_Recommendation1.jsp?type=<%="recommend"%>" method="post" name="form1">
  <div align="center" class="style1">  
   
    <table width="428" border="0">
      <tr>
        <td width="188" height="35"><div align="center" class="style8 style14">Post Name </div></td>
        <td width="230"><label>
          <input type="text" name="p_Name" value="<%=p_Name%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td height="37"><div align="center" class="style8 style14">Categorie</div></td>
        <td><label>
          <input type="text" name="categorie" value="<%=categorie%>" readonly>
        </label></td>
      </tr>
     
      <tr>
        <td height="52"><div align="center" class="style8 style14">Recommend</div></td>
        <td><textarea name="p_rec"></textarea></td>
      </tr>
	 
	 <!--
	   <tr>
        <td><div align="center" class="style8">Give Rank </div></td>
        <td><label>
          <select name="rank">
          <option>--Select--</option>
          <option><%= "Good"%></option>
		  <option><%= "Very Good"%></option>
		  <option><%= "Awesome"%></option>
           
          </select>
        </label></td>
      </tr>
	  -->
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value="Recommend">
        </label></td>
      </tr>
    </table>
   
  </div>
</form> </p>
         
		  
		  
		   <%

	 
	 
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
                <div class="style11">
                  <div align="right"><a href="user_SearchPost.jsp">Back</a></div>
                </div>
          </div>
          <!-- End Of Right -->
            
            <div class="cleaner"></div>
        </div><!-- End Of Content area -->     
</div><!-- End Of Container -->
    
    <div id="templatemo_footer">
        	      </div>
<!--  Free CSS Templates by TemplateMo.com  -->
</body>
</html>