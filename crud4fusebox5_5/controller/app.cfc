<cfcomponent output="false">
	
	<cffunction name="postfuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset myFusebox.do( action="layout.lay_template" ) />
	</cffunction>

	<cffunction name="landingPage">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfargument name="qrySelTblTasks">
        <cfset myFusebox.do("m_app.landingPage")>
		<cfset myFusebox.do( action="display.dsp_landingPage", contentvariable="body" ) />
	</cffunction>
    
	<cffunction name="updateForm">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_app.updateForm")>
		<cfset myFusebox.do( action="display.dsp_insOrUpdate", contentvariable="body" ) />
	</cffunction>
    
 	<cffunction name="insForm">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_app.insForm")>
		<cfset myFusebox.do( action="display.dsp_insOrUpdate", contentvariable="body" ) />
	</cffunction>
    
	<cffunction name="save">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset ATTRIBUTES  = myFusebox.variables().ATTRIBUTES>
		<!---<cfdump var="#ATTRIBUTES#" label="ATTRIBUTES" abort="false">--->
 		<cfif ATTRIBUTES.TaskID>
            <cfset ATTRIBUTES.EitherAddOrUpdate="Update">
		<cfelse>
            <cfset ATTRIBUTES.EitherAddOrUpdate="Edit">
		</cfif>
        <cfset myFusebox.do("m_app.save")>
		<cfset myFusebox.do(action="display.dsp_save", contentvariable="body") />
	</cffunction>
    
	<cffunction name="delTblTasks">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_app.delTblTasks")>
		<cfset myFusebox.do(action="display.dsp_delTblTasks", contentvariable="body") />
	</cffunction>
    
</cfcomponent>