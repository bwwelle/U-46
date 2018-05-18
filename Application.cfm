<!--- Set application name and enable Client and Session variables. --->
<cfapplication name="LessonSubmittal"
    clientmanagement="Yes"
    sessionmanagement="Yes">

<!--- Set page processing attributes. --->
<cfsetting showDebugOutput="no">

<!--- Set Application-specific Variables scope variables. --->
<cfset mainpage = "login.cfm">
<cfset current_page = "#cgi.path_info#?#cgi.query_string#">

<!--- Code below deletes sessions if browser is closed --->
<CFIF ISDEFINED("Cookie.CFID") AND ISDEFINED("Cookie.CFTOKEN")>
<CFSET CFID_LOCAL = COOKIE.CFID>
<CFSET CFTOKEN_LOCAL = COOKIE.CFTOKEN>
<CFCOOKIE NAME="CFID" VALUE="#cfid_local#">
<CFCOOKIE NAME="CFTOKEN" VALUE="#cftoken_local#">
</CFIF>
<!--- Set a Session variable.--->
<cflock timeout="20" scope="Session" type="exclusive">
    <cfif not IsDefined("session.pagesHit")>
        <cfset session.pagesHit=1>		
    <cfelse>
        <cfset session.pagesHit=session.pagesHit+1>
    </cfif>
</cflock>