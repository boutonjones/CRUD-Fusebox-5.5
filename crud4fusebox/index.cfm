<!---
Application Name: CRUD with the Fusebox 2 Methodology

This application is written using the Fusebox 2 Methodology.

About the Fusebox 2 Methodology
 * Fusebox 2 is easier to learn than FW/1.
 * Fusebox 2 is more of a methodology than a framework.  A methodology is a body of practices, procedures, and rules.
 * It's easier to learn later versions of the Fusebox frameworks after learning Fusebox 2.
 * Fusebox became increasingly robust and complex with each version.  The latest version of Fusebox is 5.5.  
 * Fusebox 5 requires XML but in Fusebox 5.5 XML is optional.
 * Fusebox lends itself well to MVC
 * The fusebox (controller) is index.cfm
 * Fuseactions are passed by URL or Form
 * formurl2attributes.cfm: converts all form and URL variables to attributes-scopes variables.
 * scope all variables with the attributes prefix
 * Fuses: files that use the fusebox naming convention.
     * Application Files (app_)
       Use of Application.cfm is discouraged in favor of these application files.
		 * app_globals.cfm - contains the CFAPPLICATION tag and request scope variables
		 * app_local.cfm - for variables which exist inside of a single cicuit applicaion
		 * app_server.cfm - for certain variables --- E.G. IP addresses and datasources --- with different values depending on which server the file belongs on.
		 * app_secure.cfm
		 * app_login.cfm
		 * app_logout.cfm
	 * Display Files (dsp_) (View)
	 * Action Files (act_) (Model)
	 * Query Files (qry_) (Model)
	 * Redirection Files (url_) (Model)
	 * ColdFusion Custom Tags
 * Break your home application into many circuits. Break your circuit into many fuseactions. Break your fuseactions into fuses.
 * With Fusebox 2 you are not restricted a a specific directory structure.  But if you are inclined you can place your templates in directories for Model and Views.   Or for circuits.  Or a combination.
--->

<!--- Convert all URL and FORM variables to the ATTRIBUTES scope --->
<cfinclude template="formurl2attributes.cfm">

<!--- The following two templates replace Application.cfm --->
<cfinclude template="app_globals.cfm">
<cfinclude template="app_locals.cfm">

<!--- Page Header (the top of the page layout) --->
<cfinclude template="dsp_header.cfm">

<!--- Technically this next line of code belongs in the app_globals.cfm template but for the purpose of maintenance I think it's helpful to have it here. 
It sets the landing page as the default so if someone visits this application without specifying a fuseaction, the application won't break.--->
<cfparam name="ATTRIBUTES.fuseaction" default="landingPage">

<!--- @@@ BEGIN THE FUSEBOX @@@ --->
<cfswitch expression="#ATTRIBUTES.fuseaction#">
    <!--- @@@ TASK MANAGEMENT FUSEACTIONS @@@ --->
    <cfcase value="landingPage">
		<cfinclude template="qry_SelTblTasks.cfm">
		<cfinclude template="qry_GetTblDevelopers.cfm">
		<cfinclude template="qry_GetTblRefStatus.cfm">
		<cfinclude template="dsp_landingPage.cfm">
    </CFCASE>
    <!--- Update Task Form --->
    <CFCASE value="updateForm">
		<cfinclude template="qry_SelTblTasks.cfm">
        <cfinclude template="qry_GetTblDevelopers.cfm">
        <cfinclude template="qry_GetTblRefStatus.cfm">
		<cfinclude template="dsp_insOrUpdate.cfm">
    </CFCASE>
    <!--- Add New Task Form --->
    <CFCASE value="insForm">
        <cfinclude template="qry_GetTblDevelopers.cfm">
        <cfinclude template="qry_GetTblRefStatus.cfm">
		<cfinclude template="dsp_insOrUpdate.cfm">
    </CFCASE>
    <!--- Either Add New Task or Update Existing Task (Action) --->
    <cfcase value="save">
		<cfif ATTRIBUTES.TaskID>
			<cfinclude template="qry_UpdateTblTasks.cfm">
            <cfset LOCAL.EitherAddOrUpdate="Update">
		<cfelse>
			<cfinclude template="qry_InsTblTasks.cfm">
            <cfset LOCAL.EitherAddOrUpdate="Edit">
		</cfif>
		<cfinclude template="dsp_save.cfm">
    </cfcase>
    <!--- Delete Task (Action) --->
    <CFCASE value="delTblTasks">
		<cfinclude template="qry_DelTblTasks.cfm">
		<cfinclude template="dsp_delTblTasks.cfm">
	</cfcase>
    <!--- @@@ REPORT FUSEACTIONS @@@ --->
    <!--- Standard Report --->
    <CFCASE value="report">
		<cfinclude template="qry_SelTblTasks.cfm">
		<cfinclude template="dsp_report.cfm">
    </CFCASE>
    <!--- Report By Developer --->
    <CFCASE value="DevName">
        <cfset ATTRIBUTES.OrderByGroup="DevName">
		<cfinclude template="qry_SelTblTasks.cfm">
		<cfinclude template="dsp_DevName.cfm">
    </CFCASE>
    <!--- Report By Status --->
    <CFCASE value="StatusTerm">
		<cfset ATTRIBUTES.OrderByGroup="StatusTerm">
        <cfinclude template="qry_SelTblTasks.cfm">
		<cfinclude template="dsp_StatusTerm.cfm">
    </CFCASE>
    <!--- @@@ ERROR FUSEACTIONS @@@ --->
    <CFCASE value="error">
		<cfinclude template="dsp_error.cfm">
    </CFCASE>
    <!--- NOTE: As for the next two fuseactions, I'm not supposed to include markup in the fusebox but it seemed unnecessary to CFINCLUDE templates consisting of only two lines of code each. --->
    <!--- The cantGetThereFromHere fuseaction is generated by CFML in Application.cfm.  It ensures that all calls go through index.cfm.  None of the other templates should be accessed directly.  --->
    <cfcase value="cantGetThereFromHere">
		<h1 class="error">Error!</h1>
		<p  class="error">Your request was invalid.  Please access the &quot;<cfoutput>#APPLICATION.applicationname#</cfoutput>&quot; web application through index.cfm.</p>
    </cfcase>
    <!--- "Unknown fuseaction."  This use of cfdefaultcase is not really part of the Fusebox methodology.  It's just a little something that I have found helpful as a developer. --->
	<cfdefaultcase>
		<h1 class="error">Error!</h1>
		<p  class="error">Unknown fuseaction.  The fuseaction <tt><cfoutput>#ATTRIBUTES.fuseaction#</cfoutput></tt> is unrecognized.</p>
	</cfdefaultcase>
</CFSWITCH>
<!--- @@@ END THE FUSEBOX @@@ --->

<!--- Page Footer (the bottom of the page layout) --->
<cfinclude template="dsp_footer.cfm">