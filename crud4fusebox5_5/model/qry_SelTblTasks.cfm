
		<cfparam name="ATTRIBUTES.TaskID" type="numeric" default="0">
		<cfparam name="ATTRIBUTES.TaskName" type="string" default="">
		<cfparam name="ATTRIBUTES.DevCode" type="string" default="">
		<cfparam name="ATTRIBUTES.StatusTerm" type="string" default="">
		<cfparam name="ATTRIBUTES.MemoTxt" type="string" default="">
		<cfparam name="ATTRIBUTES.OrderByGroup" type="string" default="TaskName"> 
		<cfparam name="ATTRIBUTES.OrderByGroup" type="regex" pattern="(DevName|StatusTerm|TaskName)" >

		<cfquery datasource="#APPLICATION.fusebox.datasource#" name="qrySelTblTasks" debug>
			SELECT 
				tblTasks.TaskID
				, tblTasks.TaskName
				, tblTasks.TaskDescript
				, tblTasks.DevCode
				, tblDevelopers.FName & ' ' & tblDevelopers.LName AS DevName
				, tblTasks.DueDate
				, tblTasks.PercentComplete
				, tblTasks.StatusCode
				, tblRefStatus.StatusTerm
				, tblTasks.MemoTxt
			FROM ((tblTasks INNER JOIN tblDevelopers 
					ON tblTasks.DevCode = tblDevelopers.DevCode)
				INNER JOIN tblRefStatus 
					ON tblTasks.StatusCode = tblRefStatus.StatusCode)
			WHERE 0=0
				<!--- Optional Search Criteria --->
				<cfif ATTRIBUTES.TaskID>AND tblTasks.TaskID = <cfqueryparam cfsqltype="cf_sql_integer" value="#ATTRIBUTES.TaskID#"></cfif>
				<cfif len(trim(ATTRIBUTES.TaskName))>AND tblTasks.TaskName LIKE <cfqueryparam cfsqltype="cf_sql_varchar" value="%#ATTRIBUTES.TaskName#%"></cfif>
				<cfif len(trim(ATTRIBUTES.DevCode))>AND tblTasks.DevCode = <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.DevCode#"></cfif>
				<cfif len(trim(ATTRIBUTES.StatusTerm))>AND tblTasks.StatusTerm = <cfqueryparam cfsqltype="cf_sql_char" value="#ATTRIBUTES.Term#"></cfif>
				<cfif len(trim(ATTRIBUTES.MemoTxt))>AND tblTasks.MemoTxt LIKE <cfqueryparam cfsqltype="cf_sql_varchar" value="%#ATTRIBUTES.MemoTxt#%"></cfif>
			<!--- For reports.  Display by (Order By) criteria --->
			<cfswitch expression="#ATTRIBUTES.OrderByGroup#">
				<cfcase value="DevName">ORDER BY FName, LName, TaskName</cfcase>
				<cfcase value="StatusTerm">ORDER BY StatusTerm</cfcase>
				<cfcase value="TaskName">ORDER BY TaskName, tblTasks.DevCode</cfcase> 
			</cfswitch>
			;
		</cfquery>
        
		<!---
        <cfdump var="#qrySelTblTasks#" label="qrySelTblTasks" expand="no"><br />
        <br />
        <cfdump var="#APPLICATION#" label="APPLICATION" expand="no"><br />
        <br />
		<p>qry_SelTblTasks.cfm</p>
		<cfdump var="#qrySelTblTasks#" label="qrySelTblTasks" expand="no"><br />
		--->

		<cfset request.qrySelTblTasks = qrySelTblTasks>
		

		

		