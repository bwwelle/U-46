

<cfinclude template="inc_session_test.cfm"><cfif NOT IsDefined("Form.ContentTitle")>
  <cfset ContentTitleValue = "">
  <cfelse>
  <cfset ContentTitleValue = #Form.ContentTitle#>
</cfif>
<cfif NOT IsDefined("Form.EssentialQuestion")>
  <cfset EssentialQuestionValue = "">
  <cfelse>
  <cfset EssentialQuestionValue = #Form.EssentialQuestion#>
</cfif>
<cfif NOT IsDefined("Form.EssentialSkill")>
  <cfset EssentialSkillValue = "">
  <cfelse>
  <cfset EssentialSkillValue = #Form.EssentialSkill#>
</cfif>
<cfif NOT IsDefined("Form.StateStandards")>
  <cfset StateStandardsValue = "">
  <cfelse>
  <cfset StateStandardsValue = #Form.StateStandards#>
</cfif>
<cfif NOT IsDefined("Form.School")>
  <cfset SchoolValue = 0>
  <cfelse>
  <cfset SchoolValue = #Form.School#>
</cfif>
<cfif NOT IsDefined("Form.Timeframe")>
  <cfset TimeframeValue = 0>
  <cfelse>
  <cfset TimeframeValue = #Form.Timeframe#>
</cfif>
<cfset #session.LessonTitle# = #FORM.LessonTitle#>
<cfset #session.SchoolID# = #SchoolValue#>
<cfset #session.TimeframeID# = #TimeframeValue#>
<cfset #session.Assessment# = #FORM.Assessment#>
<cfset #session.Introduction# = #FORM.Introduction#>
<cfset #session.Procedures# = #FORM.Procedures#>
<cfset #session.ExtentionActivities# = #FORM.ExtentionActivities#>
<cfset #session.TeacherTips# = #FORM.TeacherTips#>
<cfset #session.ContentTitleList# = #ContentTitleValue#>
<cfset #session.EssentialQuestionList# = #EssentialQuestionValue#>
<cfset #session.EssentialSkillList# = #EssentialSkillValue#>
<cfset #session.StateStandardsList# = #StateStandardsValue#>
<cfswitch expression="#FORM.Submit#">
  <cfcase value="Submit lesson for approval">
     <cfstoredproc procedure="sp_InsertLesson" datasource="LessonPlansDb" returnCode = "No">
	<cfprocparam 
					value="#FORM.LessonTitle#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#SchoolValue#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam 
					value="#TimeframeValue#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam 
					value="#FORM.Assessment#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.Introduction#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.Procedures#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.ExtentionActivities#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.TeacherTips#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="Pending Approval" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#ContentTitleValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#EssentialQuestionValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#EssentialSkillValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#StateStandardsValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#session.RegistrationID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#session.LessonPlanID#" CFSQLType="CF_SQL_INTEGER" type="In">
					<cfprocparam variable="NewLessonPlanID" CFSQLType="CF_SQL_INTEGER" type="OUT" >
    </cfstoredproc>
	<cfoutput>
	<cfset #session.LessonPlanID# = "#NewLessonPlanID#"></cfoutput>
    <cfif #session.LoginLevel# eq "user">
  <cfquery name="getAdmins" datasource="LessonPlansDB">
  SELECT * FROM Registration WHERE Level = "admin"
  </cfquery>
  <cfmail to="#getAdmins.Email#"
	from="noreply@u-46.org"
	subject="New Lesson Plan Submitted at www.americanhistorypartnership.org"
	type="text" query = "getAdmins">
	Dear #getAdmins.FirstName# #getAdmins.LastName#,

	A lesson plan has been submitted by #session.FirstName# #session.LastName# on the www.americanhistorypartnership.org website.  Feel free to login at www.americanhistorypartnership.org/login.cfm to view/approve/reject this new lesson plan.

	-This message was sent as a courtesy of the americanhistorypartnership.org website administration.
</cfmail>
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  <cfelseif #session.LoginLevel# eq "admin">
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  <cfelse>  
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  </cfif>
  </cfcase>
  <cfcase value="Upload">

  <cfif IsDefined("FORM.file") AND #FORM.File# neq "" AND IsDefined("FORM.HandoutTitle") and #FORM.HandoutTitle# neq "">
    <cffile action="upload" destination="G:\AHPSite\SubmittedLessonPlans" filefield="FORM.File" nameconflict="overwrite">
    <cfstoredproc procedure="sp_InsertHandout" datasource="LessonPlansDb" returnCode = "No">
	<cfprocparam  value="#session.RegistrationID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#session.LessonPlanID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#FORM.HandoutTitle#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam  
					value="#cffile.serverFile#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam variable="NewLessonPlanID" CFSQLType="CF_SQL_INTEGER" type="OUT" >
    </cfstoredproc>
	<cfoutput>
	<cfset #session.LessonPlanID# = "#NewLessonPlanID#"></cfoutput>   
	</cfif>
    <cfset #session.HandoutStatus# = "SaveHandout">
    <cflocation url="lessonplansubmittal.cfm">
  </cfcase>
  <cfcase value = "Save Link">
	  <cfif isDefined("FORM.LinkTitle") AND isDefined("FORM.LinkPath") AND #FORM.LinkTitle# neq "" AND #FORM.LinkPath# neq "">
      <cfstoredproc procedure="sp_InsertLink" datasource="LessonPlansDb" returnCode = "No">
	<cfprocparam  value="#session.RegistrationID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#session.LessonPlanID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#FORM.LinkTitle#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam  
					value="#FORM.LinkPath#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam variable="NewLessonPlanID" CFSQLType="CF_SQL_INTEGER" type="OUT" >
    </cfstoredproc>
	<cfoutput>
	<cfset #session.LessonPlanID# = "#NewLessonPlanID#"></cfoutput>
	</cfif>
      <cfset #session.LinkStatus# = "SaveLink">
      <cflocation url="lessonplansubmittal.cfm">    
  </cfcase>
  <cfcase value="View Submitted Lessons">
    <cfif #session.LoginLevel# eq "user">
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  <cfelseif #session.LoginLevel# eq "admin">
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  <cfelse>  
  <cflocation addtoken="Yes" url="/thankyou.cfm">
  </cfif>
  </cfcase>
  <cfcase value="Save/don't submit lesson">
  <cfstoredproc procedure="sp_InsertLesson" datasource="LessonPlansDb" returnCode = "No">
	<cfprocparam 
					value="#FORM.LessonTitle#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#SchoolValue#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam 
					value="#TimeframeValue#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam 
					value="#FORM.Assessment#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.Introduction#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.Procedures#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.ExtentionActivities#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#FORM.TeacherTips#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="Lesson Being Edited" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#ContentTitleValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#EssentialQuestionValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#EssentialSkillValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#StateStandardsValue#" CFSQLType="CF_SQL_VARCHAR" type="In"><cfprocparam 
					value="#session.RegistrationID#" CFSQLType="CF_SQL_INTEGER" type="In"><cfprocparam  
					value="#session.LessonPlanID#" CFSQLType="CF_SQL_INTEGER" type="In">
					<cfprocparam variable="NewLessonPlanID" CFSQLType="CF_SQL_INTEGER" type="OUT" >
    </cfstoredproc>
	<cfoutput>
	<cfset #session.LessonPlanID# = "#NewLessonPlanID#"></cfoutput>
    
    <cfif #session.LoginLevel# eq "user">
      <cflocation addtoken="Yes" url="/thankyou.cfm">
      <cfelseif #session.LoginLevel# eq "admin">
      <cflocation addtoken="Yes" url="/thankyou.cfm">
      <cfelse>
      <cflocation addtoken="Yes" url="/thankyou.cfm">
    </cfif>
  </cfcase>
  <cfcase value="Delete Link">
  <cfif IsDefined("FORM.SubmittedLink")> 
    <cfquery name="Deletelink" datasource="LessonPlansDB">
    DELETE FROM SubmittedLink WHERE SubmittedLinkID =<cfqueryparam 
					value="#FORM.SubmittedLink#" CFSQLType="CF_SQL_INTEGER" >
    </cfquery>
	</cfif>
    <cfset #session.LinkStatus# = "DeleteLink">
    <cflocation url="lessonplansubmittal.cfm">
  </cfcase>
  <cfcase value="View Link">  
  <cfif IsDefined("FORM.SubmittedLink")> 
    <cfquery name="ViewLink" datasource="LessonPlansDB">
    SELECT * FROM SubmittedLink WHERE SubmittedLinkID =<cfqueryparam 
					value="#FORM.SubmittedLink#" CFSQLType="CF_SQL_INTEGER" >
    </cfquery>
    <cfoutput query="ViewLink">
      <cfset #session.LinkStatus# = "ViewLink">
      <cfset #session.LinkPath# = #LinkPath#>
    </cfoutput><cfelse>
	<cfset #session.LinkStatus# = "DeleteLink">
	</cfif>
    <cflocation url="lessonplansubmittal.cfm">
  </cfcase>
  <cfcase value="Delete Handout">
  <cfif IsDefined("FORM.SubmittedHandout")> 
    <cfquery name="DeleteHandout" datasource="LessonPlansDB">
    DELETE FROM SubmittedHandout WHERE SubmittedHandoutID =<cfqueryparam 
					value="#FORM.SubmittedHandout#" CFSQLType="CF_SQL_INTEGER" >
    </cfquery>
	</cfif>
    <cfset #session.HandoutStatus# = "DeleteHandout">
    <cflocation url="lessonplansubmittal.cfm">
  </cfcase>
	  <cfcase value="View Handout">	
	     <cfif IsDefined("FORM.SubmittedHandout")> 
    <cfquery name="ViewHandout" datasource="LessonPlansDB">
    SELECT * FROM SubmittedHandout WHERE SubmittedHandoutID =<cfqueryparam 
					value="#FORM.SubmittedHandout#" CFSQLType="CF_SQL_INTEGER" >
    </cfquery>    <cfoutput query="ViewHandout">
      <cfset #session.HandoutPath# = #HandoutPath#>
    </cfoutput><cfset #session.HandoutStatus# = "ViewHandout">
	<cfelse>
	<cfset #session.HandoutStatus# = "DeleteHandout">
	</cfif>
    <cflocation url="lessonplansubmittal.cfm">
  </cfcase>
</cfswitch>
