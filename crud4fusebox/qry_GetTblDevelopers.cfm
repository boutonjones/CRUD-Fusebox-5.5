
		<cfquery datasource="#APPLICATION.datasource#" name="qryGetTblDevelopers">
			SELECT DevCode, FName & ' ' & LName AS DevName
			FROM tblDevelopers; 
		</cfquery>