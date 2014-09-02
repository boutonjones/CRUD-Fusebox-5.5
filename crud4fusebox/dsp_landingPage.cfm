
		<div style="margin: 20px; border: groove; padding: 20px 20px;">
		
			<p>This application is for experimenting with the Fusebox 2 Methodology.</p>
			
			<p><span class="highlight">Please view the ColdFusion comment block in the root index.cfm template.</span>  It's my &quot;quick start&quot; readme file --- as well as the &quot;Fusebox&quot; for this application.  </p>
		
		</div>
		
		<h2>Display Records for All Tasks.</h4>
		
		<div align="center">
		
			<table class="standard" id="crud_table">
				<caption>CRUD Report</caption>
                <thead>
                    <tr>
                        <th>Tasks</th>
                        <th>Description</th>
                        <th>Developer</th>
                        <th>% Complete</th>
                        <th>Status</th>
                        <th>Memo</th>
                        <th>Delete</th>
                    </tr>
                </thead>
				<cfoutput query="qrySelTblTasks">
                <tbody>
					<tr>
						<td><a href="index.cfm?fuseaction=updateForm&TaskID=#TaskID#">#TaskName#</a></td>
						<td>#TaskDescript#</td>
						<td>#DevName#</td>
						<td>#PercentComplete#</td>
						<td>#StatusTerm#</td>
						<td>#MemoTxt#</td>
						<td><a href="index.cfm?fuseaction=delTblTasks&TaskID=#TaskID#">Delete</a></td>
					</tr>
                </tbody>
				</cfoutput>
			</table>
		
		</div>
