<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Recommendations</title>
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
.style5 {font-size: 16px}
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
                <h1>All   Posts based on Tree-Based Recommender<br />
                System.</h1>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>		  
<%@ include file="connect.jsp" %>
<%

	
	String s1="",fname="",key="",file="";
	
    int num=1;
	
	String []splitFile;
	

      	try 
	{
        
      	
      	String str="select * from categories"; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(str);
		int count=1;
	  while ( rs.next())
	    {
	
		s1=rs.getString(2);
		 
		 
		
		 
		%><p class="style12 style5"><%=num+"."+s1+" Categorie"%></p>
		<P></P>
<%
		
		
		count++;
		
		String str2 = "select * from posts where categorie='"+s1+"' order by rank desc";
		Statement st2 = connection.createStatement();
		ResultSet rs2 = st2.executeQuery(str2);
	
		while(rs2.next())
		{
		String p_Name = rs2.getString(2);
	
		
		
	   out.print("<input type=\"checkbox\" name=\"key\" ");
		%>
		<p class="style13"><a href="admin_ViewRecommendation.jsp?p_Name=<%=p_Name%>"><span class="style15 style7"><%="  "+p_Name%></span> </a></p>

 
     <%}
	 num++;
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