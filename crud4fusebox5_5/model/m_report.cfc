<cfcomponent output="false">

	<cffunction name="report">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <!---<cfset var qrySelTblTasks="">--->
		<cfinclude template="qry_SelTblTasks.cfm">
	</cffunction>
    
	<cffunction name="DevName">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <!---<cfset var qrySelTblTasks="">--->
        <cfset ATTRIBUTES.OrderByGroup="DevName">
		<cfinclude template="qry_SelTblTasks.cfm">
	</cffunction>
    
 	<cffunction name="StatusTerm">
 		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset var qrySelTblTasks="">
		<!---<cfset ATTRIBUTES.OrderByGroup="StatusTerm">--->
        <cfinclude template="qry_SelTblTasks.cfm">
	</cffunction>
    
</cfcomponent>