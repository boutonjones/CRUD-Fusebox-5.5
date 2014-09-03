
<!--- A table for either adding a new record into the Task table or for editing an existing record in the product table.  --->	

	<cfoutput>
		
		<cfparam name="ATTRIBUTES.TaskID" type="integer" default=0>
		
		<!--- If you are editing an existing record then you would look up the record first --->
		<cfif ATTRIBUTES.TaskID>
			
			<cfset local.TaskID = ATTRIBUTES.TaskID>
			<cfset local.TaskName = request.qrySelTblTasks.TaskName>
			<cfset local.TaskDescript = request.qrySelTblTasks.TaskDescript>
			<cfset local.DevCode = request.qrySelTblTasks.DevCode>
			<cfset local.DueDate = DateFormat(request.qrySelTblTasks.DueDate,"mmmm dd, yyyy")>
			<cfset local.MemoTxt = request.qrySelTblTasks.MemoTxt>
			<cfset local.PercentComplete = request.qrySelTblTasks.PercentComplete>
			<cfset local.StatusCode = request.qrySelTblTasks.StatusCode>
			
			<h2>Edit an Existing Task</h2>
			
		<!--- Otherwise if you were adding a new record you would make sure the form fields were empty --->
		<cfelse>
			
			<cfset local.TaskID=0>
			<cfset local.TaskName="">
			<cfset local.TaskDescript="">
			<cfset local.DevCode="">
			<cfset local.DueDate="">
			<cfset local.MemoTxt="">
			<cfset local.PercentComplete=0>
			<cfset local.StatusCode="">
			
			<h2>Add a New Task</h2>
		
		</cfif>
		
		<!--- IF the main SELECT query was run BUT there were no records found THEN display an error message ... --->
		<cfif ATTRIBUTES.TaskID AND request.qrySelTblTasks.recordcount EQ 0>
			
			<H2 class="error">Error!</H2>
			<h3 class="error">No records found for that Task.</h3>
			<p class="error">Task ID: #ATTRIBUTES.TaskID#</p>
			
		<!--- .... OTHERWISE display the form for either Adding a New Records or Editing an Existing Record --->
		<cfelse>
			
			<div align="center">
		
                <table class="standard">
                    <cfif ATTRIBUTES.TaskID>
                        <caption>Edit an Existing Task</caption>
                    <cfelse>
                        <caption>Add a New Task</caption>
                    </cfif>
                    <CFFORM action="index.cfm?fuseaction=app.save" method="post">
                        <tr>
                            <th>Task Name</th>
                            <td>
                                <cfinput type="text" id="TaskName" name="TaskName" required="true" value="#local.TaskName#" size="60" />
                            </td>
                        </tr>
                        <tr>
                            <th>Task Description</th>
                            <td>
                                <cfinput type="text" id="TaskDescript" name="TaskDescript" required="true" value="#local.TaskDescript#" size="60" />
                            </td>
                        </tr>
                        <tr>
                            <th>Developer</th>
                            <td>
                            
                                <select id="DevCode" name="DevCode">
                                    <option value=""></option>

                                        <cfloop query="request.qryGetTblDevelopers">
    
                                            <cfif local.DevCode EQ request.qryGetTblDevelopers.DevCode>
                                                <option value="#request.qryGetTblDevelopers.DevCode#" selected="selected">#request.qryGetTblDevelopers.devName#</option>
                                            <cfelse>
                                                <option value="#request.qryGetTblDevelopers.DevCode#">#request.qryGetTblDevelopers.devName#</option>
                                            </cfif>
    
                                        </cfloop>

                                </select>
                            
                            </td>
                        </tr>
                        <tr>
                            <th>% Complete</th>
                            <td>
                                <cfinput type="PercentComplete" name="PercentComplete" required="true" value="#local.PercentComplete#" validate="integer" size="3" />
                            </td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>
                            
                                <select id="StatusCode" name="StatusCode">
                                    <option value=""></option>

                                        <cfloop query="request.qryGetTblRefStatus">
                                            <cfif local.StatusCode EQ request.qryGetTblRefStatus.StatusCode>
                                                <option value="#request.qryGetTblRefStatus.StatusCode#" selected="selected">#request.qryGetTblRefStatus.StatusTerm#</option>
                                            <cfelse>
                                                <option value="#request.qryGetTblRefStatus.StatusCode#">#request.qryGetTblRefStatus.StatusTerm#</option>
                                            </cfif>
    
                                        </cfloop>

                                </select>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>Memo</th>
                            <td>
                                
                                <textarea rows="6" name="MemoTxt" id="MemoTxt" style="width: 98%">#local.MemoTxt#</textarea>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"">
                            
                                <!-- Hidden TaskID -->
                                <input type="hidden" name="TaskID" id="TaskID" value="#local.TaskID#" />
                                
                                <div align="center">
                                    
                                    <input type="submit" value="Submit!" style="text-align: center; font-weight: bold; font-style: normal;" />
                                    
                                </div>

                            </td>
                        </tr>
                    </CFFORM>
                </table>
			
			</div>

		</cfif>

	</cfoutput>