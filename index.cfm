<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>U46 -- Roadmap of American History</title>
<link href="roadmap1b.css" rel="stylesheet" type="text/css" />
<!--[if IE 5]>
<style type="text/css"> 
/* place css box model fixes for IE 5* in this conditional comment */
.twoColFixRtHdr #sidebar1 { width: 220px; }
</style>
<![endif]-->
<!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.twoColFixRtHdr #sidebar1 { padding-top: 30px; }
.twoColFixRtHdr #mainContent { zoom: 1; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]-->
<style>
h1 { 
display: inline; 
} 
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<script type="text/javascript">
function getSelectedIndexes(selObj) {
if (selObj.type == 'select-one') {
return new Array(selObj.selectedIndex);
} else {
var indexes = new Array();
for (var i = 0; i < selObj.options.length; i++) {
if (selObj.options[i].selected) {
indexes.push(i);
}
}
return indexes;
}
}
</script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>
<body class="twoColFixRtHdr">
<div id="container">
  <div id="header">
    <div id="banner">
      <img src="images/mainbanner1.gif" alt="U-46 Roadmap of American History" width="864" height="144" />
    </div>
    <div id="navigation">
      <ul id="MenuBar1" class="MenuBarHorizontal">
        <li><a href="index.cfm">Home</a> </li>
        <li><a href="contenttitles/contenttitle_curriculum.html">U-46 American History Roadmap</a></li>
        <li><a href="feedback/feedback.html">Reflection and Feedback</a>          </li>
        <li><a href="activities/activities.html" class="MenuBarItemSubmenu">Activities</a>
          <ul>
            <li><a href="activities/upcoming.html">Upcoming Events</a></li>
            <li><a href="activities/eventregistration.html">Event Registration</a></li>
 			<li><a href="../activities/intheclassroom.html">In The Classroom</a></li>
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
        <td><a href="http://www.crfc.org"><img src="images/sidebannercrfclogo1.gif" alt="Constitutional Rights Foundation Chicago" border="0" /></a></td>
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
        <td bgcolor="#FFFFFF"><img src="images/sidebannerlinks1.gif" alt="Other Recommended Resources" /> </td>
      </tr>
    <td bgcolor="#FFFFFF"> <p><a href="http://www.teachinghistory.org/">National History Education Clearinghouse</a></p>
      <p><a href="http://www.loc.gov">Library of Congress</a></p>
      <p><a href="http://www.archives.gov/">National Archives</a></p>
      <p><a href="http://www.crfc.org/civicc.html">Modules for High School U.S. History Classes (Constitutional Rights Foundation Chicago)</a></p>
      <p><a href="http://www.crf-usa.org/bill-of-rights-in-action/bill-of-rights-in-action-archives-united-states-history.html">Bill of Rights in Action Lessons in U.S. History (Constitutional Rights Foundation &ndash; Los Angeles)</a></p></td>
      <tr>
        <td><img src="images/sidebarbottomfade.gif" /> </td>
      </tr>
    </table>
  </div>
  <div id="mainContent">
    <div id="searchbox">
      <img src="images/searchboxhead1.gif" alt="Project Lessons and Resources" />
      <table width="100%" border="0" cellspacing="18" cellpadding="0">
        <tr>
          <td colspan="3" class="largewhitetext">Search by:</td>
        </tr>
        <tr>
          <td><form method="post" action="index.cfm" width="180">
              <cfquery name="getContentTitles" datasource="LessonPlansDB">
                SELECT DISTINCT content_title FROM RoadmapData WHERE content_title <> '' ORDER BY content_title_sortorder
              </cfquery>
              <select name="Criteria" onchange="javascript:if(getSelectedIndexes(this)!=''){this.form.submit();}">
                <cfif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "content_title">
                  <option>Content Title</option>
                  <option>------------</option>
                  <cfoutput query="getContentTitles">
                    <cfif #content_title# eq #FORM.Criteria#>
                      <option selected="selected">#content_title#</option>
                      <cfelse>
                      <option>#content_title#</option>
                    </cfif>
                  </cfoutput>
                  <cfelse>
                  <option selected="selected">Content Title</option>
                  <option>------------</option>
                  <cfoutput query="getContentTitles">
                    <option>#content_title#</option>
                  </cfoutput>
                </cfif>
              </select>
              <input type="hidden" name="searchtype" value="content_title" />
            </form></td>
          <td><form method="post" action="index.cfm" width="180">
              <cfquery name="getThemes" datasource="LessonPlansDB">
                SELECT DISTINCT theme FROM RoadmapData WHERE theme <> ''
              </cfquery>
              <select name="Criteria" onchange="javascript:if(getSelectedIndexes(this)!=''){this.form.submit();}">
                <cfif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "theme">
                  <option>Theme</option>
                  <option>------------</option>
                  <cfoutput query="getThemes">
                    <cfif #theme# eq #FORM.Criteria#>
                      <option selected="selected">#theme#</option>
                      <cfelse>
                      <option>#theme#</option>
                    </cfif>
                  </cfoutput>
                  <cfelse>
                  <option selected="selected">Theme</option>
                  <option>------------</option>
                  <cfoutput query="getThemes">
                    <option>#theme#</option>
                  </cfoutput>
                </cfif>
              </select>
              <input type="hidden" name="searchtype" value="theme" />
            </form></td>
          <td><form method="post" action="index.cfm" width="180">
              <cfquery name="getLessons" datasource="LessonPlansDB">
                SELECT DISTINCT lesson FROM RoadmapData WHERE lesson <> '' ORDER BY lesson
              </cfquery>
              <select name="Criteria" onchange="javascript:if(getSelectedIndexes(this)!=''){this.form.submit();}">
                <cfif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "lesson">
                  <option>Lesson</option>
                  <option>------------</option>
                  <cfoutput query="getLessons">
                    <cfif #lesson# eq #FORM.Criteria#>
                      <option selected="selected">#lesson#</option>
                      <cfelse>
                      <option>#lesson#</option>
                    </cfif>
                  </cfoutput>
                  <cfelse>
                  <option selected="selected">Lesson</option>
                  <option>------------</option>
                  <cfoutput query="getLessons">
                    <option>#lesson#</option>
                  </cfoutput>
                </cfif>
              </select>
              <input type="hidden" name="searchtype" value="lesson" />
            </form></td>
        </tr>
        <tr>
          <td><img src="images/lincoln1.gif" width="180" height="108" /></td>
          <td><img src="images/kids1.gif" width="180" height="108" /></td>
          <td><img src="images/constpic1.gif" width="180" height="108" /></td>
        </tr>
        <tr>
          <td colspan="3"><form name="myform" method="post" action="index.cfm"><div align="right">
              <a href="#" onclick="document.myform.submit()"><img name="Criteria" border="0" src="images/teachingtools1.gif" alt="Teaching Tools" width="182" height="45" /></a>
          <input type="hidden" name="searchtype" value="teachingtools" /></div></form></td>
        </tr>
      </table>
    </div>
    <cfif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "lesson">	  
      <cfquery name="getLessonPlanList" datasource="LessonPlansDB">
        SELECT DISTINCT component, lesson, file_path, file_name, sortorder FROM RoadmapData GROUP BY component, lesson, file_path, file_name, sortorder HAVING lesson =
        <cfqueryparam value="#FORM.Criteria#" CFSQLType="CF_SQL_VARCHAR">
        ORDER BY sortorder
      </cfquery>
      <cfquery name="getResultsCount" datasource="LessonPlansDB">
        SELECT COUNT(*) AS resultscount FROM (SELECT DISTINCT component, lesson, file_path, file_name, sortorder FROM RoadmapData GROUP BY component, lesson, file_path, file_name, sortorder HAVING lesson =
        <cfqueryparam value="#FORM.Criteria#" CFSQLType="CF_SQL_VARCHAR"> AND file_name <> ''
        ORDER BY sortorder) AS resultscount
      </cfquery>
      <cfelseif IsDefined("FORM.searchtype") AND #FORM.searchtype# neq "lesson" AND #FORM.searchtype# neq "teachingtools">
      <cfquery name="getLessonPlanList" datasource="LessonPlansDB">
        SELECT DISTINCT lesson, #FORM.searchtype# FROM RoadmapData GROUP BY lesson, #FORM.searchtype# HAVING (#FORM.searchtype#) =
        <cfqueryparam value="#FORM.Criteria#" CFSQLType="CF_SQL_VARCHAR">
        ORDER BY lesson
      </cfquery>
      <cfquery name="getResultsCount" datasource="LessonPlansDB">
        SELECT COUNT(*) AS resultscount FROM (SELECT DISTINCT lesson, #FORM.searchtype#, file_name FROM RoadmapData GROUP BY lesson, #FORM.searchtype# HAVING (#FORM.searchtype#) =
        <cfqueryparam value="#FORM.Criteria#" CFSQLType="CF_SQL_VARCHAR"> AND file_name <> ''
        ORDER BY lesson) AS resultscount
      </cfquery>
	  <cfelseif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "teachingtools">
      <cfquery name="getLessonPlanList" datasource="LessonPlansDB">
        SELECT DISTINCT title, file_path, file_name FROM TeachingTools
      </cfquery>
      <cfquery name="getResultsCount" datasource="LessonPlansDB">
        SELECT COUNT(*) AS resultscount FROM (SELECT DISTINCT title FROM TeachingTools GROUP BY Title) AS resultscount
      </cfquery>
    </cfif>
    <cfif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "lesson" >
      <div id="resultsbox">
        <table>
          <tr>
            <td><h1><cfoutput query="getResultsCount">#resultscount#</cfoutput> result(s) for &quot;<cfoutput>#FORM.Criteria#</cfoutput>&quot;</h1></td>
          </tr>
          <tr>
            <td><p>Lesson Components:</p></td>
          </tr>
          <tr>
            <td><ul>
                <cfoutput query="getLessonPlanList">
                  <br />
                  <div>
                    <p><a href="#file_path#">#file_name#</a>
                      <br />
                      #component#</p>
                  </div>
                  <br />
                </cfoutput>
              </ul></td>
          </tr>
        </table>
      </div>
      <cfelseif IsDefined("FORM.searchtype") AND #FORM.searchtype# neq "lesson" AND #FORM.searchtype# neq "teachingtools">
      <cfset counter = 1>
      <div id="resultsbox">
	  	<table>
		<cfoutput query="getResultsCount">
		<cfif #resultscount# neq 0>	
          <tr>		  	
            <td><h1>#resultscount# result(s) for &quot;<cfoutput>#FORM.Criteria#</cfoutput>&quot;:</h1></td>
          </tr>
          <tr>
            <td><p>Click on a lesson to see its downloadable or linked content</p></td>
          </tr>
		<cfelse>
		  <tr>
            <td><h1>0 results for &quot;<cfoutput>#FORM.Criteria#</cfoutput>&quot;</h1></td>
          </tr>
		</cfif>
		</cfoutput>
          <tr>
            <td><ul>
                <cfoutput query="getLessonPlanList">
                  <cfset counter = #counter# + 1>
                  <br />
                  <div>
                    <form method="post" name="lessonform_#counter#" action="index.cfm">
                      <p><a href="##" onclick="document.lessonform_#counter#.submit()">#lesson#</a>
                        <input name="searchtype" type="hidden" value="lesson" />
                        <input name="Criteria" type="hidden" value="#lesson#" />
                      </p>
                    </form>
                  </div>
                  <br />
                </cfoutput>
              </ul></td>
          </tr>
        </table>
      </div>	  
	  <cfelseif IsDefined("FORM.searchtype") AND #FORM.searchtype# eq "teachingtools">
      <div id="resultsbox">
        <table>
          <tr>
            <td><h1><cfoutput query="getResultsCount">#resultscount#</cfoutput> result(s) for &quot;Teaching Tools&quot;</h1></td>
          </tr>
          <tr>
            <td><p>Teaching Tools Components:</p></td>
          </tr>
          <tr>
            <td><ul>
                <cfoutput query="getLessonPlanList">
                  <br />
                  <div>
                    <p><a href="#file_path#">#file_name#</a>
                      <br />
                      #title#</p>
                  </div>
                  <br />
                </cfoutput>
              </ul></td>
          </tr>
        </table>
      </div>
      <cfelse>
      <div id="resultsbox">
        <h1>Results appear here, labeled by chosen category:</h1> <p>Lessons appear as links to downloadable/linked components</p>
      </div>
    </cfif>
    <div id="footer">
      &copy; Illinois School District U-46 All Rights Reserved&nbsp;&nbsp;&nbsp; <img src="images/u46logo1.gif" alt="U-46" />
      <!-- end #footer -->
      <br />
      <br />
      <br />
    </div>
  </div>
  <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats -->
  <br class="clearfloat" />
  <!-- end #container -->
</div>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
</body>
</html>
