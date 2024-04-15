<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Users Search History</title>
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
.style6 {color: #f69722}
.style7 {font-size: 14px}
.style9 {font-size: 15px}
.style10 {color: #FF0000}
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
                <h1>All Users Search History</h1>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p><table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
          <td  width="55" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style22 style6 style9">SI NO</div></td>
		  <td  width="104" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style22 style6 style9">Searched By</div></td>
          <td  width="100" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style22 style6 style9">Post Name </div></td>
          <td  width="101" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style22 style6 style9">Categorie</div></td>
          <td  width="109" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style22 style6 style9">Keyword</div></td>
          <td  width="115" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style22 style9">Date</div></td>
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						
						try 
						{
						   
							
							String p_Name="",categorie="",keyword="",date="",user="";
							int i=1;
						    
						   	String query="select * from search "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								user=rs.getString(2);
								p_Name=rs.getString(3);
								categorie=rs.getString(4);
								keyword=rs.getString(5);
								date=rs.getString(6);
								
					
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style6 style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9 style10">
                    <%out.println(user);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9">
                    <%out.println(p_Name);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9">
                    <%out.println(categorie);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9">
                    <%out.println(keyword);%>
                </div></td>
				<td  valign="baseline" height="0"><p class="style23 style9">&nbsp;</p>
                  <div align="center" class="style23 style9">
                    <%out.println(date);%>
                </div></td>
            </tr>
            <%
					i=i+1;	
						
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