<cfinclude template="inc_session_test.cfm">
<cfif NOT IsDefined("Form.School")>
  <cfset SchoolValue = 0>
  <cfelse>
  <cfset SchoolValue = #Form.School#>
</cfif>
<cfif NOT IsDefined("Form.LessonType")>
  <cfset LessonTypeValue = 0>
  <cfelse>
  <cfset LessonTypeValue = #Form.LessonType#>
</cfif>
<cfif NOT IsDefined("Form.Related")>
  <cfset Related = "No Data Entered">
  <cfelse>
  <cfset Related = #Form.Related#>
</cfif>
<cfif NOT IsDefined("Form.Sources")>
  <cfset Sources = "No Data Entered">
  <cfelse>
  <cfset Sources = #Form.Sources#>
</cfif>
<cfif NOT IsDefined("Form.Methods")>
  <cfset Methods = "No Data Entered">
  <cfelse>
  <cfset Methods = #Form.Methods#>
</cfif>
<cfif NOT IsDefined("Form.Changes")>
  <cfset Changes = "No Data Entered">
  <cfelse>
  <cfset Changes = #Form.Changes#>
</cfif>
<cfset #LessonTitle# = #FORM.LessonTitle#>    
<cfset #NewLessonTitle# = #FORM.NewLessonTitle#>   
<cfquery name="getAdmins" datasource="LessonPlansDB">
      SELECT * FROM Registration WHERE Level = "admin"
      </cfquery>
      <cfmail to="#getAdmins.Email#"
	from="noreply@u-46.org"
	subject="A Reflection Form Submitted At www.americanhistorypartnership.org"
	type="text" query = "getAdmins">
        Dear #getAdmins.FirstName# #getAdmins.LastName#, 
		A reflection form has been submitted by #session.FirstName# #session.LastName# on the www.americanhistorypartnership.org website. 
		School = #SchoolValue#
		Lesson Title = #LessonTitle#
		Lesson Type = #LessonTypeValue#
		New Lesson Title = #NewLessonTitle#
		Related Information = #Related#
		Sources = #Sources#
		Methods = #Methods#
		Changes = #Changes#	
		
		-This message was sent as a courtesy of the www.americanhistorypartnership.org website administration.
      </cfmail><cfif #session.LoginLevel# eq "user">
      <cflocation addtoken="Yes" url="/submittedlessons.cfm">
      <cfelseif #session.LoginLevel# eq "admin">
      <cflocation addtoken="Yes" url="/lessonadministration.cfm">
      <cfelse>
      <cflocation addtoken="Yes" url="/submittedlessons.cfm">
    </cfif>
