<cfcomponent extends="fusebox5.Application" output="false">
	<!--- This is a fusebox 5.5 application --->
    
    <!--- Set Parameters --->
	<cfset This.name = "CRUD with Fusebox 5.5 Framework"> 
    <cfset This.clientmanagement="yes"> 
    <cfset This.loginstorage="Session"> 
    <cfset This.sessionmanagement="yes"> 
    <cfset This.sessiontimeout="#createtimespan(0,0,10,0)#"> 
    <cfset This.applicationtimeout="#createtimespan(5,0,0,0)#">

	<cfset showDebugOutput="Yes">
	
	<cfscript>
		// must enable implicit (no-XML) mode!
		FUSEBOX_PARAMETERS.allowImplicitFusebox = true;

		// the rest is taken straight from the traditional fusebox.xml skeleton:
		FUSEBOX_PARAMETERS.defaultFuseaction = "app.landingPage";
		// previously was development-circuit-load.  changed to development-full-load mode:
		FUSEBOX_PARAMETERS.mode = "development-full-load";
		FUSEBOX_PARAMETERS.conditionalParse = true;
		// change this to something more secure:
		FUSEBOX_PARAMETERS.password = "skeleton";
		FUSEBOX_PARAMETERS.strictMode = true;
		FUSEBOX_PARAMETERS.debug = true;
		// we use the core file error templates:
		FUSEBOX_PARAMETERS.errortemplatesPath = "/fusebox5/errortemplates/";
		
		// These are all default values that can be overridden:
		// FUSEBOX_PARAMETERS.fuseactionVariable = "fuseaction";
		// FUSEBOX_PARAMETERS.precedenceFormOrUrl = "form";
		// FUSEBOX_PARAMETERS.scriptFileDelimiter = "cfm";
		// FUSEBOX_PARAMETERS.maskedFileDelimiters = "htm,cfm,cfml,php,php4,asp,aspx";
		// FUSEBOX_PARAMETERS.characterEncoding = "utf-8";
		// FUSEBOX_PARAMETERS.strictMode = false;
		// FUSEBOX_PARAMETERS.allowImplicitCircuits = false;

		// force the directory in which we start to ensure CFC initialization works:
		FUSEBOX_CALLER_PATH = getDirectoryFromPath(getCurrentTemplatePath());
		
		FUSEBOX_PARAMETERS.datasource="DBCrud";
	</cfscript>
    
	<!--- All calls must go through index.cfm.  None of the other templates should be accessed directly --->
    <CFIF not findnocase("index.cfm",cgi.CF_TEMPLATE_path)>
        <CFlocation url="index.cfm?fuseaction=app.cantGetThereFromHere">
    </CFIF> 

	<cfsetting showDebugOutput="Yes">
	
	<!--- set application name based on the directory path --->
	<!---<cfset this.name = "CRUD with Fusebox 5.5 Framework">--->
    
	<!--- Set Parameters --->
    <cfset APPLICATION.datasource="DBCrud">
    <cfparam name="ATTRIBUTES.TaskID" type="numeric" default=0>
    <cfparam name="self" default="index.cfm">
    <cfparam name="myself" default="index.cfm?fuseaction">
	
	<!---
		if you define any onXxxYyy() handler methods, remember to start by calling
			super.onXxxYyy(argumentCollection=arguments)
		so that Fusebox's own methods are executed before yours
	--->
	
	<cffunction name="onFuseboxApplicationStart">
	
		<cfset super.onFuseboxApplicationStart() />

		<!--- code formerly in fusebox.appinit.cfm or the appinit global fuseaction --->
		<cfset myFusebox.getApplicationData().startTime = now() />
		
	</cffunction>
	
	<cffunction name="onRequestStart">
		<cfargument name="targetPage" />
	
		<cfset super.onRequestStart(arguments.targetPage) />

		<!--- formerly in fusebox.init.cfm --->
		<cfset self = myFusebox.getSelf() />
		<cfset myself = myFusebox.getMyself() />
		
	</cffunction>
	
</cfcomponent>