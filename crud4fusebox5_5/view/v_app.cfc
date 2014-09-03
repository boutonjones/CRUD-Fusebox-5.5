<cfcomponent output="false">

	<cffunction name="landingPage">
		<cfinclude template="display/dsp_landingPage.cfm">	
	</cffunction>
    
	<cffunction name="updateForm">
		<cfinclude template="display/dsp_insOrUpdate.cfm">
	</cffunction>
    
 	<cffunction name="insForm">
		<cfinclude template="display/dsp_insOrUpdate.cfm">
	</cffunction>
    
	<cffunction name="save">
 		<cfinclude template="display/dsp_save.cfm">
	</cffunction>
    
	<cffunction name="delTblTasks">
		<cfinclude template="display/dsp_delTblTasks.cfm">
	</cffunction>

</cfcomponent>