	
		<h2 style="text-align: center">SCRUM Sprint Report</h4>
		
		<div align="center">
		
			<!--- Outer CFOUTPUT (ORDER BY StatusCode) --->
			<cfoutput query="request.qrySelTblTasks" group="StatusTerm">
			
				<table class="standard">
					<caption>#StatusTerm#</caption>
					<tr>
						<th>Tasks</th>
						<th>Description</th>
						<th>Developer</th>
						<th>% Complete</th>
						<th>Memo</th>
					</tr>
					<!--- Inner CFOUTPUT --->
					<cfoutput>
						<tr>
							<td>#TaskName#</td>
							<td>#TaskDescript#</td>
							<td>#DevName#</td>
							<td>#PercentComplete#</td>
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
