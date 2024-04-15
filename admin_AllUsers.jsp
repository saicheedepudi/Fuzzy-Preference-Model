<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Users</title>
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
.style4 {color: #42ac1f}
.style5 {font-size: 16px}
.style6 {color: #f69722}
.style7 {font-size: 14px}
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
                <h1>All End Users.</h1>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p><table width="574" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="26" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">ID</div></td>
              <td  width="116" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">User Image</div></td>
              <td  width="102" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">User Name</div></td>
			  <td  width="107" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Email</div></td>
			  <td  width="106" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Date Of Birth</div></td>
              <td  width="83" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(7);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(10);
							
								
								
								
								
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(s1);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <%out.println(s3);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
    
          
              <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="83" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style5">
                
                <p>&nbsp;</p>
       <a href="admin_Status.jsp?id=<%=i%>">waiting</a>
           
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="18" height="0"  valign="baseline"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    <%out.println(s6);%>
              </div></td>
              <%
						}
						%>
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
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
          </table>
		  </p>
                <p>&nbsp;</p>
                <div align="right" class="style7"><a href="adminMain.jsp">Back</a></div>
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