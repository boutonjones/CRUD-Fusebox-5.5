<cfcomponent output="false">

	<cffunction name="landingPage">
		<cfargument name="myFusebox">
		<cfargument name="event">
		<cfinclude template="qry_SelTblTasks.cfm">
		<cfinclude template="qry_GetTblDevelopers.cfm">
		<cfinclude template="qry_GetTblRefStatus.cfm">
	</cffunction>

    <cffunction name="updateForm">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfinclude template="qry_SelTblTasks.cfm">
        <cfinclude template="qry_GetTblDevelopers.cfm">
        <cfinclude template="qry_GetTblRefStatus.cfm">
    </cffunction>
    
    <cffunction name="insForm">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfinclude template="qry_GetTblDevelopers.cfm">
        <cfinclude template="qry_GetTblRefStatus.cfm">
    </cffunction>
    
    <cffunction name="save">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset ATTRIBUTES  = myFusebox.variables().ATTRIBUTES>
		<cfset APPLICATION.datasource = APPLICATION.fusebox.datasource>
		<cfif ATTRIBUTES.TaskID>
			<cfinclude template="qry_UpdateTblTasks.cfm">
		<cfelse>
			<cfinclude template="qry_InsTblTasks.cfm">
		</cfif>
    </cffunction>
    
    <cffunction name="delTblTasks">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset ATTRIBUTES  = myFusebox.variables().ATTRIBUTES>
        <cfinclude template="qry_DelTblTasks.cfm">
    </cffunction>

</cfcomponent>