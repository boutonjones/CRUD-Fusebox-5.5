
		<div style="margin: 20px; border: groove; padding: 20px 20px;">
		
			<p>This application is for experimenting with the Fusebox 5.5 Framework.</p>
			
			<p><span class="highlight">Please view the ColdFusion comment block in the root index.cfm template.</span>  It's my &quot;quick start&quot; readme file for this application.</p>
		
		</div>
		
		<h2>Display Records for All Tasks.</h4>
		
		<div align="center">
		
        	<cftry>

			<table class="standard">
				<caption>CRUD Report</caption>
				<tr>
					<th>Tasks</th>
					<th>Description</th>
					<th>Developer</th>
					<th>% Complete</th>
					<th>Status</th>
					<th>Memo</th>
					<th>Delete</th>
				</tr>
				<cfoutput query="request.qrySelTblTasks">
					<tr>
						<td><a href="index.cfm?fuseaction=updateForm&TaskID=#TaskID#">#TaskName#</a></td>
						<td>#TaskDescript#</td>
						<td>#DevName#</td>
						<td>#PercentComplete#</td>
						<td>#StatusTerm#</td>
						<td>#MemoTxt#</td>
						<td><a href="index.cfm?fuseaction=app.delTblTasks&TaskID=#TaskID#">Delete</a></td>
					</tr>
				</cfoutput>

			</table>
            
			<!--- unexpected exceptions. --->
            <cfcatch type="Any">
                <cfsetting requesttimeout="#(CreateObject('java', 'coldfusion.runtime.RequestMonitor').GetRequestTimeout() + 3)#"/>
                <cfoutput>
                    <h1>Other Error: #cfcatch.Type#</h1>
                    <div style="text-align: left">
                        <ul>
                            <li><strong>Message:</strong> #cfcatch.Message#</li>
                            <li><strong>Detail:</strong> <cfif len(cfcatch.Detail)>#cfcatch.Detail#<cfelse>NULL</cfif></li>
                            <li><strong>Extended Info:</strong> <cfif len(cfcatch.ExtendedInfo)>#cfcatch.ExtendedInfo#<cfelse>NULL</cfif></li>
                        </ul>
                    </div>
                </cfoutput>
                <cfdump var="#cfcatch#" label="cfcatch" expand="no"><br />
                <CFIF structKeyExists(application,"name")>
                    <p>application.name: #application.name#</p>
                </CFIF>
                <cfabort>
            </cfcatch>
            
            </cftry>
		
		</div>
