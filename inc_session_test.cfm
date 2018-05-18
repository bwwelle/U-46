

<cfif NOT IsDefined("session.loggedin")>

<cflocation url="\login.cfm">


  <cfabort>

</cfif> 
