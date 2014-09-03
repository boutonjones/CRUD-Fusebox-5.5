	
		<h2>SCRUM Sprint Report</h4>
		
		<div align="center">
		
			<!--- Outer CFOUTPUT (ORDER BY DevName) --->
			<cfoutput query="request.qrySelTblTasks" group="DevName">
			
				<table class="standard">
					<caption>#DevName#</caption>
					<tr>
						<th>Tasks</th>
						<th>Description</th>
						<th>% Complete</th>
						<th>Status</th>
						<th>Memo</th>
					</tr>
					<!--- Inner CFOUTPUT --->
					<cfoutput>
						<tr>
							<td>#TaskName#</td>
							<td>#TaskDescript#</td>
							<td>#PercentComplete#</td>
							<td>#StatusTerm#</td>
							<td>#MemoTxt#</td>
						</tr>
					</cfoutput>
				</table>
			
			</cfoutput>
			
			<table class="standard">
				<tr>
					<td colspan="6">
						
						<cfinclude template="dsp_reportlinks.cfm">
						
					</td>
				</tr>
			</table>
		
		</div>
