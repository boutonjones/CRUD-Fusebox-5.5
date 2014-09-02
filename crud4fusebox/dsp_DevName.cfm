	
		<h2>SCRUM Sprint Report</h4>
		
		<div align="center">
		
			<!--- Outer CFOUTPUT (ORDER BY DevName) --->
			<cfoutput query="qrySelTblTasks" group="DevName">
			
				<table class="standard" id="crud_table">
					<caption>#DevName#</caption>
					<thead>
                        <tr>
                            <th>Tasks</th>
                            <th>Description</th>
                            <th>% Complete</th>
                            <th>Status</th>
                            <th>Memo</th>
                        </tr>
                    </thead>
                    <tbody>
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
                    </tbody>
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
