<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Added Posts Description</title>
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
.style8 {font-size: 16px}
.style9 {color: #42ac1f}
.style10 {color: #f69722}
.style11 {font-size: 14px}
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
                    <h1>Admin Menu </h1>
					 <ul class="sb_menu">
          <li><a href="adminMain.jsp"><span>Admin Main</span></a></li>
          <li><a href="adminLogin.jsp"><span>Log Out</span></a></li>
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
            	<div class="templatemo_h_line">
                </div>
                <h1><span class="style9"><%=request.getParameter("p_Name")%></span> Post Details.</h1>
              
                <p>&nbsp;</p>
                <p>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
				<%
	
      	
	

      	try 
	{
      		
      	   String p_Desc="",p_Desc1="",p_Categorie="";
		   int p_Price=0;
      		
      	   String p_Name = request.getParameter("p_Name");
           
           String str="select * FROM posts where p_name='"+p_Name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
          
	   if( rs.next() )
	   {
			p_Price = rs.getInt(3);
			p_Desc = rs.getString(4);
			p_Categorie = rs.getString(6);
			
				
				String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	         p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
		
	   }
	   
		
		
%>

<form name="s" method="post" enctype="multipart/form-data" action="admin_AddPosts1.jsp" ">
 
  <table width="405" border="0" align="center">
    <tr>
      <td width="165" height="33"><div align="center" class="style10"><span class="style3 style4 style8">Categorie </span></div></td>
       <td><label>
        <input type="text" id="t3" value="<%=p_Categorie%>" readonly>
      </label></td>
    </tr>
	 
   
	
	 <tr>
      <td height="35"><div align="center" class="style10"><span class="style3 style4 style8">Price </span></div></td>
      <td><label>
        <input type="text" id="t3" value="<%=p_Price%>/- Rs" readonly>
      </label></td>
    </tr>
    <tr>
      <td height="80"><div align="center" class="style10"><span class="style3 style4 style8"> Description </span></div></td>
      <td><label>
        <textarea name="desc" id="t2" rows="3" cols="25" readonly><%=p_Desc1%></textarea>
      </label></td>
    </tr>
  </table>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		
		  </p>
                <p>&nbsp;</p>
				<div align="right" class="style7"><a href="admin_AllPosts.jsp" class="style11">Back</a></div>
                <p></p>
          </div><!-- End Of Right -->
            
            <div class="cleaner"></div>
        </div><!-- End Of Content area -->     
</div><!-- End Of Container -->
    
    <div id="templatemo_footer">
        	      </div>
<!--  Free CSS Templates by TemplateMo.com  -->
</body>
</html>