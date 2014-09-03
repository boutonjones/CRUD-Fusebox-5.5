
		<cfparam name="ATTRIBUTES.TaskID" type="numeric">

		<cfquery datasource="#APPLICATION.fusebox.datasource#">
			DELETE 
			FROM tblTasks
			WHERE tblTasks.TaskID = <cfqueryparam cfsqltype="cf_sql_integer" value="#ATTRIBUTES.TaskID#">;
		</cfquery>
		