<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/generaltemplate1.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>U46 -- Roadmap of American History</title>
<!-- InstanceEndEditable -->
<link href="roadmap1b.css" rel="stylesheet" type="text/css" />
<!--[if IE 5]>
<style type="text/css"> 
/* place css box model fixes for IE 5* in this conditional comment */
.twoColFixRtHdr #sidebar1 { width: 220px; }
</style>
<![endif]--><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.twoColFixRtHdr #sidebar1 { padding-top: 30px; }
.twoColFixRtHdr #mainContent { zoom: 1; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]-->
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style2 {
	font-size: 14px;
	color: #234B84;
}
.style4 {font-size: 14%}
-->
</style>
<!-- InstanceEndEditable -->
</head>

<body class="twoColFixRtHdr">

<div id="container">
  <div id="header">
    <div id="banner"><img src="images/mainbanner1.gif" alt="U-46 Roadmap of American History" width="864" height="144" /></div>
    
    <div id="navigation">
      <ul id="MenuBar1" class="MenuBarHorizontal">
        <li><a href="index.cfm">Home</a> </li>
        <li><a href="contenttitles/contenttitle_curriculum.html">U-46 American History Roadmap</a></li>
        <li><a href="feedback/feedback.html">Reflection and Feedback</a>          </li>
        <li><a href="activities/activities.html" class="MenuBarItemSubmenu">Activities</a>
          <ul>
            <li><a href="activities/upcoming.html">Upcoming Events</a></li>
            <li><a href="activities/eventregistration.html">Event Registration</a></li>
			<li><a href="activities/intheclassroom.html">In The Classroom</a></li>
          </ul>
        </li>
        <li><a href="login.cfm">Contribute a Lesson</a></li>
        <li><a href="abouttheproject/abouttheproject.html" class="MenuBarItemSubmenu">About the Project</a>
          <ul>
            <li><a href="abouttheproject/projectdescription.html">Project Description</a></li>
            <li><a href="abouttheproject/contributingscholars.html">Contributing Scholars</a></li>
            <li><a href="abouttheproject/partnersanddirectors.html">Partners and Project Directors</a></li>
            <li><a href="abouttheproject/participatingteachers.html">Participating Teachers</a></li>
          </ul>
        </li>
        <li><a href="contactus/contactus.html">Contact Us</a></li>
      </ul>
    </div>
  </div>
  <div id="sidebar1">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/projectpartnershead1.gif" alt="Project Partners" /></td>
  </tr>
  <tr>
    <td> <a href="http://www.crfc.org"><img src="images/sidebannercrfclogo1.gif" alt="Constitutional Rights Foundation Chicago" border="0" /></a></td>
  </tr>
  <tr>
    <td><a href="http://www.elginhistory.org/"><img src="images/sidebannerehslogo1.gif" alt="Elgin Historical Society" border="0" /></a></td>
  </tr>
  <tr>
    <td><a href="http://www.alplm.org"><img src="images/sidebanneralplmlogo1.gif" alt="Abraham Lincoln Presidential Library and Museum" border="0" /></a></td>
  </tr>
  <tr>
    <td><a href="http://www.niu.edu"><img src="images/sidebannerniulogo1.gif" alt="Northern Illinois University" border="0" /></a></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">   <img src="images/sidebannerlinks1.gif" alt="Other Recommended Resources" />
</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"> <p><a href="http://www.teachinghistory.org/">National History Education Clearinghouse</a></p>
      <p><a href="http://www.loc.gov">Library of Congress</a></p>
      <p><a href="http://www.archives.gov/">National Archives</a></p>
      <p><a href="http://www.crfc.org/civicc.html">Modules for High School U.S. History Classes (Constitutional Rights Foundation Chicago)</a></p>
      <p><a href="http://www.crf-usa.org/bill-of-rights-in-action/bill-of-rights-in-action-archives-united-states-history.html">Bill of Rights in Action Lessons in U.S. History (Constitutional Rights Foundation &ndash; Los Angeles)</a></p></td>
  </tr>
 <tr>
    <td>
    <img src="images/sidebarbottomfade.gif" /> 
  </td>
  </tr>
</table>
   
  </div>
  <div id="mainContent">
   
    <!-- InstanceBeginEditable name="Content" -->

<!--- Insert the new record --->
<cfquery datasource="LessonPlansDB" name="insertprofile">
INSERT INTO registration (FirstName, LastName, Email, Password, city, state, zip,phone, datecreated,level) VALUES(<cfqueryparam 
					value="#FORM.FirstName#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.LastName#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.Email#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.Password#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.City#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.State#" CFSQLType="CF_SQL_VARCHAR" >,<cfqueryparam 
					value="#FORM.Zip#" CFSQLType="CF_SQL_INTEGER" >,<cfqueryparam 
					value="#FORM.Phone#" CFSQLType="CF_SQL_VARCHAR" >,
					<cfqueryparam 
					value="#Now()#" CFSQLType="CF_SQL_timestamp">,<cfqueryparam 
					value="user" CFSQLType="CF_SQL_VARCHAR" >)</cfquery>
<div align="center">
<h1>Profile Added</h1>
<cfoutput>You have added #Form.FirstName# #Form.Lastname# to the
			Profile database.
</cfoutput></div>
<cfquery datasource="LessonPlansDB" name="Login">SELECT * FROM registration WHERE email = '#FORM.Email#' AND password = '#FORM.Password#'</cfquery>
<cfset session.loggedin="1">
<cfset session.LoginLevel = "user">
<cfset session.LastName="#Login.LastName#">
<cfset session.FirstName="#Login.FirstName#">
<cfset session.RegistrationID="#Login.RegistrationID#">
<cfset #session.LessonPlanID# = "-1">
  <cfset #session.LessonTitle# = "">
  <cfset #session.SchoolID# = 1>
  <cfset #session.TimeframeID# = 1>
  <cfset #session.Assessment# = "">
  <cfset #session.Introduction# = "">
  <cfset #session.Procedures# = "">
  <cfset #session.ExtentionActivities# = "">
  <cfset #session.TeacherTips# = "">
  <cfset #session.ContentTitleList# = "">
  <cfset #session.EssentialQuestionList# = "">
  <cfset #session.EssentialSkillList# = "">
  <cfset #session.StateStandardsList# = "">
  <cfset #session.LessonPlanMode# = "">
  <cfset #session.LinkStatus# = "">
  <cfset #session.LinkPath# = "">
    <cfset #session.HandoutStatus# = "">
  <cfset #session.HandoutPath# = "">
<br />
<div align="center" class="style1" style="height:300px">
  <a href="lessonplansubmittal.cfm">Submit A Lesson Plan</a></div>

 <!-- InstanceEndEditable -->
     <div id="footer">
   &copy; Illinois School District U-46 All Rights Reserved&nbsp;&nbsp;&nbsp; <img src="images/u46logo1.gif" alt="U-46" />
  <!-- end #footer -->
  <br />
  <br />
  <br />
  </div></div>
	<!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><br class="clearfloat" />
  
<!-- end #container --></div>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
</body>
<!-- InstanceEnd --></html>
