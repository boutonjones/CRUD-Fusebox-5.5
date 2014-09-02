
		<h2 style="text-align: center">SCRUM Sprint Report</h4>

		<div align="center">
		
			<table class="standard" id="crud_table">
				<caption>SCRUM Sprint Report</caption>
                <thead>
                    <tr>
                        <th>Tasks</th>
                        <th>Description</th>
                        <th>Developer</th>
                        <th>% Complete</th>
                        <th>Status</th>
                        <th>Memo</th>
                    </tr>
                </thead>
                <tbody>
					<cfoutput query="qrySelTblTasks">
					<tr>
						<td>#TaskName#</td>
						<td>#TaskDescript#</td>
						<td>#DevName#</td>
						<td>#PercentComplete#</td>
						<td>#StatusTerm#</td>
						<td>#MemoTxt#</td>
					</tr>
					</cfoutput>
                    <tr>
                        <td colspan="6">
                            
                            <cfinclude template="dsp_reportlinks.cfm">
                                   
                        </td>
                    </tr>
                </tbody>
			</table>
		
		</div>
