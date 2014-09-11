
		<cfquery datasource="#APPLICATION.fusebox.datasource#" name="qryGetTblRefStatus">
			SELECT StatusCode, StatusTerm
			FROM tblRefStatus;
		</cfquery>
		
		<!---<cfset request.qryGetTblRefStatus = qryGetTblRefStatus>--->
		<cfset event.setValue("qryGetTblRefStatus",qryGetTblRefStatus)>