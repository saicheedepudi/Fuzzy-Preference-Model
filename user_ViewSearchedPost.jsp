<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search Post</title>
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
.style15 {color: #f69722}
.style17 {font-size: 16px}
.style18 {color: #42ac1f}
.style19 {font-size: 16px; color: #000000; }
.style20 {font-size: 15px}
.style21 {font-size: 15px; color: #000000; }
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
                <h1>Searched post <span class="style18"><%=request.getParameter("p_Name")%></span> Details</h1>
                <p class="style6">&nbsp;</p>
                <p>
    <%
      	try 
	{
           String p_Name="",Keyword="",user="",p_Desc="",p_Desc1="",categorie="",rec_By="",rec_Details="",rec_date="";
	       String strDate="",strTime="",dt="";
		   int p_Rank = 0,p_Price=0,i = 0;
		   
		    p_Name = request.getParameter("p_Name");
			Keyword = request.getParameter("keyword");
			
		    user = (String)application.getAttribute("user");
		  
		   String str="select * from posts where p_name='"+p_Name+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
		   
	if ( rs.next() )
	   {
		i = rs.getInt(1);
		p_Price = rs.getInt(3);
		p_Desc = rs.getString(4);
		categorie = rs.getString(6);
		p_Rank = rs.getInt(7);
		
		
		  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		  SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		   Date now = new Date();

		   strDate = sdfDate.format(now);
		   strTime = sdfTime.format(now);
		   dt = strDate + "   " + strTime;
		   
		String str2 = "insert into search (user,p_name,categorie,keyword,dt) values('"+user+"','"+p_Name+"','"+categorie+"','"+Keyword+"','"+dt+"')";
		connection.createStatement().executeUpdate(str2);
	
		String keyWord = "5765586965748666502846";
		keyWord = keyWord.substring(0, 16);
		byte[] keyValue = keyWord.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c2 = Cipher.getInstance("AES");
		c2.init(Cipher.ENCRYPT_MODE, key);
	    String ec = new String(Base64.encode(keyWord.getBytes()));
		 p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
									
	    
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="160" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                                <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="187" height="27" >
								  <div align="center"><span class="style17" style="color:#f69722">Post Name</span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= p_Name%></span></div></td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="187" height="27">
						  		  <div align="center"><span class="style17" style="color:#f69722">Categorie</span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= categorie%></span></div></td>
								</tr>
								<tr>
									<td width="187" height="27">
								  <div align="center"><span class="style17" style="color:#f69722">Rank </span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= p_Rank%></span></div></td>
				    			</tr>
								<tr>
										<td width="187" height="27">
								  <div align="center"><span class="style17" style="color:#f69722">Description </span></div></td>
								        <td><div align="center"><span class="style17" style="color:#000000;"><%= p_Desc1%></span></div></td>
								</tr>
								<tr>
       <tr>
     <td  width="160" valign="middle" height="41" style="color: #2c83b0;"><div align="left " class="style8 style15 style11" style="margin-left:20px;">Recommended By</div></td>
     <td  width="187" columnspan="2" valign="middle" height="41" style="color: #2c83b0;"><div align="left " class="style8 style15 style11" style="margin-left:20px;">Recommended Details</div></td>
	  <td  width="140" columnspan="2" valign="middle" height="41" style="color: #2c83b0;"><div align="left " class="style8 style15 style11" style="margin-left:20px;">Date</div></td>
   </tr>
   <%
           String str1="select * from recommendations where p_name='"+p_Name+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	while ( rs1.next() )
	   {
	     rec_By = rs1.getString(2);
		 rec_Details = rs1.getString(3);
		 rec_date = rs1.getString(6);
		 %>
       <tr>
 
     <td height="30"><div align="center" class="style19 style20"><span class="style9 style10"><%=rec_By%></span></div></td>
	  <td><div align="center" class="style21"><span class="style9 style10"><%=rec_Details%></span></div></td>
	   <td><div align="center" class="style21"><span class="style9 style10"><%=rec_date%></span></div></td>
   </tr>

    <%
       	
       	out.println("");
						}
						%>
						<tr>
						<td height="30"></td>
						<td></td>
						<td><a href="user_Recommendation.jsp?p_Name=<%=p_Name%>&categorie=<%=categorie%>">Recommend</a> on Post </td>
						</tr>
						<tr>
						<td height="30"></td>
						<td></td>
						<td><a href="user_Interest.jsp?p_Name=<%=p_Name%>&categorie=<%=categorie%>">Rank</a>  on Post </td>
						</tr>
						<%
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
 </table>
 </p>
                <p>&nbsp;</p>
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