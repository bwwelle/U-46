<cfquery datasource="LessonPlansDB" name="Login">
SELECT * FROM registration WHERE email = '#FORM.email#' AND password = '#FORM.password#'
</cfquery>
<cfif login.recordcount eq 0>
<cfset session.loginincorrect = 1>
  <cflocation addtoken="No" url="login.cfm?badlogin=1">
  <cfelse>
  <cfset session.loginincorrect = 0>
  <cflock timeout="20" scope="Session" type="exclusive">
    <cfset session.loggedin="1">
  </cflock>
  <cflock timeout="20" scope="Session" type="exclusive">
    <cfset session.firstname="#Login.firstname#">
  </cflock>
  <cfset session.lastname="#Login.lastname#">
  <cfset session.registrationid="#Login.registrationid#">
  
 <cfset #session.LessonPlanID# = "-1">
<cfset #session.LoginLevel# = "#Login.level#">
  <cfset #session.LessonTitle# = "">
  <cfset #session.SchoolID# = 1>
  <cfset #session.TimeframeID# = 1>
  <cfset #session.Assessment# = "">
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
  <cfset #session.Email# = "#Login.Email#">  
  
  <cfif #session.LoginLevel# eq "user">
  <cflocation addtoken="Yes" url="/submittedlessons.cfm">
  <cfelseif #session.LoginLevel# eq "admin">
  <cflocation addtoken="Yes" url="/lessonadministration.cfm">
  <cfelse>
  
  <cflocation addtoken="Yes" url="/submittedlessons.cfm">
  </cfif>
</cfif>
