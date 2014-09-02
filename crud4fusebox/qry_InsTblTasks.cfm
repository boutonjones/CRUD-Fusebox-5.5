
		<cfparam name="ATTRIBUTES.TaskName" type="string">
		<cfparam name="ATTRIBUTES.TaskDescript" type="string" default="">
		<cfparam name="ATTRIBUTES.PercentComplete" type="numeric">
		<cfparam name="ATTRIBUTES.MemoTxt" type="string" default="">
		<cfparam name="ATTRIBUTES.StatusCode" type="string">
		<cfparam name="ATTRIBUTES.DevCode" type="string">

		<!--- NOTE:  You can't mix values and SELECT in an INSERT in Access.  Otherwise I would have nested the following query in qryInsTblTasks. --->
		<cfquery datasource="#APPLICATION.datasource#" name="qryGetNextTaskID"><!---  result="resultQuery" --->
			SELECT MAX(TaskID) + 1 AS NextTaskID
			FROM tblTasks;
		</cfquery>
		<cfset ATTRIBUTES.TaskID = qryGetNextTaskID.NextTaskID>

		<cfquery datasource="#APPLICATION.datasource#" name="qryInsTblTasks"  result="resultQuery"><!---  --->
			INSERT INTO tblTasks (
				TaskID
				, TaskName
				, TaskDescript
				, PercentComplete
				, MemoTxt
				, StatusCode
				, DevCode 
				)
			VALUES (
				<cfqueryparam cfsqltype="cf_sql_integer" value="#ATTRIBUTES.TaskID#">
				, <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.TaskName#">
				, <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.TaskDescript#">
				, <cfqueryparam cfsqltype="cf_sql_integer"  value="#ATTRIBUTES.PercentComplete#">
				, <cfqueryparam cfsqltype="cf_sql_varchar" value="#ATTRIBUTES.MemoTxt#">
				, <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.StatusCode#">
				, <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.DevCode#">
				);
		</cfquery>