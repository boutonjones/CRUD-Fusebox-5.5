<cfcomponent output="false">
	
	<cffunction name="postfuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
		
		<!--- do the layout --->
		<cfset myFusebox.do( action="layout.lay_template" ) />
	
	</cffunction>
    
     <cffunction name="error">
 		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset myFusebox.do( action="display.dsp_error", contentvariable="body" ) />
    </cffunction>
    
    <cfcase value="cantGetThereFromHere">
 		<cfargument name="myFusebox" />
		<cfargument name="event" />
		<cfset myFusebox.do( action="display.dsp_cantGetThereFromHere", contentvariable="body" ) />
    </cfcase>
    
</cfcomponent>