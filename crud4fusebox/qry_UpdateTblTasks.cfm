
		<cfparam name="ATTRIBUTES.TaskName" type="string" default="">
		<cfparam name="ATTRIBUTES.TaskDescript" type="string" default="">
		<cfparam name="ATTRIBUTES.PercentComplete" type="numeric" default=0>
		<cfparam name="ATTRIBUTES.MemoTxt" type="string" default="">
		<cfparam name="ATTRIBUTES.StatusCode" type="string" default="">
		<cfparam name="ATTRIBUTES.DevCode" type="string" default="">
		<cfparam name="ATTRIBUTES.TaskID" type="numeric" default=0>	

		<cfquery datasource="#APPLICATION.datasource#" name="qryUpdateTblTasks" result="resultQuery">
			UPDATE tblTasks 
			SET 
				TaskName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.TaskName#">
				, TaskDescript = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.TaskDescript#">
				, PercentComplete = <cfqueryparam cfsqltype="cf_sql_integer"  value="#ATTRIBUTES.PercentComplete#">
				, MemoTxt = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.MemoTxt#">
				, StatusCode = <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.StatusCode#">
				, DevCode = <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.DevCode#">
			WHERE TaskID = <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.TaskID#">
			;
		</cfquery>