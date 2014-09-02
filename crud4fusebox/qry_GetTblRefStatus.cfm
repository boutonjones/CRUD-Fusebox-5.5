
		<cfquery datasource="#APPLICATION.datasource#" name="qryGetTblRefStatus">
			SELECT StatusCode, StatusTerm
			FROM tblRefStatus;
		</cfquery>