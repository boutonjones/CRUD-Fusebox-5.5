
		<cfquery datasource="#APPLICATION.fusebox.datasource#" name="qryGetTblDevelopers">
			SELECT DevCode, FName & ' ' & LName AS DevName
			FROM tblDevelopers; 
		</cfquery>
		
		<cfset request.qryGetTblDevelopers = qryGetTblDevelopers>