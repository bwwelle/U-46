<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/generaltemplate1.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<!-- InstanceBeginEditable name="doctitle" -->
    <title>
      U46 -- Roadmap of American History
    </title>
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
.style4 {font-size: x-small}
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
<cfinclude template="inc_session_test.cfm">
        <cfparam name="FORM.Assessment" default="">
		<cfparam name="FORM.Procedures" default="">
		<cfparam name="FORM.Introduction" default="">
        <cfparam name="FORM.TimeFrame" default="1">
        <cfparam name="FORM.TeacherTips" default="">
        <cfparam name="FORM.ExtentionActivities" default="">
        <cfparam name="FORM.LessonTitle" default="">
        <cfparam name="FORM.ContentTitle" default="">
        <cfparam name="FORM.School" default="">
        <div id="content">
          <table width="100%" border="0">
            <form method="post" enctype="multipart/form-data" name="lesson" id="lesson" action="submit_reflection.cfm">
              <tr>
                <td colspan="4"><h1> U-46 Roadmap of American History </h1></td>
              </tr>
              <tr>
                <td width="2%">&nbsp;</td>
                <td colspan="3"><h1>Teacher Lesson Reflection Form </h1></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td width="24%" align="right"><span class="vocab">
                    Teacher's Name:
                  </span></td>
                <td width="73%" colspan="2"><cfoutput>#session.firstname#&nbsp;#session.lastname#</cfoutput></td>
              </tr>
              <tr valign="top">
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td colspan="2" valign="bottom">&nbsp;</td>
              </tr>
              <tr valign="top">
                <td>&nbsp;</td>
                <td align="right"><font style="font-weight:900; font-size:14px">School:</font></td>
                <td colspan="2" valign="bottom"><cfquery name="getSchools" datasource="LessonPlansDB">
                  SELECT DISTINCT * FROM School
                  </cfquery>
                  <cfoutput query="getSchools">
                    <cfset found = "false">
                    <cfloop index="SchoolItem" list="#session.SchoolID#">
                      <cfif #SchoolId# eq  #SchoolItem#>
                        <cfset found="checked">
                      </cfif>
                    </cfloop>
                    <label>
                    <input type="radio" name="School" value="#schoolName#" #found# />
                    #SchoolName#</label>
                    <br />
                    <label>
                  </cfoutput></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="right"><span class="vocab">
                  Lesson Title:
                </span></td>
                <td colspan="2"><cfquery name="getLessons" datasource="LessonPlansDB">
                SELECT DISTINCT lesson FROM RoadmapData WHERE lesson <> '' ORDER BY lesson
              </cfquery>
              <select name="LessonTitle">
                  <option>Lesson</option>
                  <option>------------</option>
                  <cfoutput query="getLessons">
                     <option>#lesson#</option>
                  </cfoutput>
				  <option>Other</option>
              </select></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3" align="right"><div align="left">
                  <span class="vocab">
                      1. This lesson is [select one]:
                  </span>
                </div></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td colspan="2"><input type="radio" name="LessonType" value="New" />
                New</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td colspan="2"><input type="radio" name="LessonType" value="Revised"/>A revised version of an existing lesson.</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3" align="left">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><span class="vocab">
                    2. What fact(s), idea(s), concept(s), trend(s), reading(s) or interpretive argument(s), if any,
                        related to your experience in grant-sponsored professional development programs have
                        prompted your intellectual engagement with this topic? How or in what way(s)? Please
                        explain and be specific. (250-500 words)</span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><textarea name="Related" id="Related" cols="45" rows="5"/></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><span class="vocab">3. What source(s) and other materials, if any, from grant-sponsored professional
                        development programs will you use in your lesson? If none, what sources and other
                        materials have you chosen? What is significant about these sources compared to others
                        you might have chosen? That is, why did you choose these sources and not others?
                        (250-500 words)
                </span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><textarea name="Sources" id="Sources" cols="45" rows="5"></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><span class="vocab">
                  4. What teaching method(s), if any, related to your experience in grant-sponsored                     
                      professional development programs are used in this lesson? If none, what other                      
                      method(s) will you use in your lesson? Why did you choose this method and not others?                      
                      Please be specific.
                </span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><textarea name="Methods" id="Methods" cols="45" rows="5"></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><span class="vocab">
                  5. What changes, if any, would you recommend to the essential questions or content
questions in the content area of the U46 Roadmap that is most directly related to the
                      content of this lesson? Why? Please explain and be specific. (250-500 words)
                </span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3"><span class="vocab">
                  <textarea name="Changes" id="Changes" cols="45" rows="5"></textarea>                  </span></td>
              </tr>
              <tr>
                <td colspan="4" align="center"><input type="hidden" name="hdnAction" id="hdnAction" value="" />
                  <input type="submit" name="Submit" value="Submit"/>
                  </td>
              </tr>
            </form>
          </table>
        </div>
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
<!-- InstanceEnd -->
</html>
