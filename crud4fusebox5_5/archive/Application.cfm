<!--- 
Use of Application.cfm is discouraged in Fusebox in favor of these application files.  
 * app_globals.cfm - contains the CFAPPLICATION tag and request scope variables
 * app_local.cfm - for variables which exist inside of a single cicuit applicaion
 * app_server.cfm - for certain variables --- E.G. IP addresses and datasources --- with different values depending on which server the file belongs on.
 * app_secure.cfm
 * app_login.cfm
 * app_logout.cfm
--->

<!--- All calls must go through index.cfm.  None of the other templates should be accessed directly --->
<CFIF not findnocase("index.cfm",cgi.CF_TEMPLATE_path)>
    <CFlocation url="index.cfm?fuseaction=cantGetThereFromHere">
</CFIF>
<!--- Even though use of Application.cfm is discouraged in Fusebox, the code above did not work in app_globals.cfm.  Application.cfm can't be replaced entirely. --->