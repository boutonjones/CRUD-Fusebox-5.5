<cfcomponent output="false">
	
	<cffunction name="postfuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset myFusebox.do( action="layout.lay_template" ) />
	</cffunction>

	<cffunction name="report">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_report.report")>
		<cfset myFusebox.do( action="display.dsp_report", contentvariable="body" ) />
	</cffunction>
    
	<cffunction name="DevName">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_report.DevName")>
		<cfset myFusebox.do( action="display.dsp_DevName", contentvariable="body" ) />
	</cffunction>
    
 	<cffunction name="StatusTerm">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfset myFusebox.do("m_report.StatusTerm")>
		<cfset myFusebox.do( action="display.dsp_StatusTerm", contentvariable="body" ) />
	</cffunction>
    
</cfcomponent>