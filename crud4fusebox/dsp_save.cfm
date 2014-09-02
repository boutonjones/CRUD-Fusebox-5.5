
<!-- 
main.save
Save a New Record or Update an Existing Record 
--->

<cfoutput>

		<h2>Thank You</h2>	
		
		<h2>#LOCAL.EitherAddOrUpdate#</h2>

		<cfif structKeyExists(resultQuery,"recordcount") AND resultQuery.recordcount EQ 1>
			
			<p class="successmsg">Your request was completed successfully.</p>
			
		<cfelse>
			
			<p class="error">Your request was NOT completed successfully.</p>
			
			<p>Please send the following information to the HRIS department.</p>
			
			<cfif structKeyExists(resultQuery,"sql")>
				<div style="border-style:solid; border-color: ##000; width:95%">
					<tt>
						<pre>#resultQuery.Sql#</pre>
					</tt>
				</div>
			</cfif>
			
			<cfif isDefined("resultQuery.sqlparameters") and structKeyExists(resultQuery,"sqlparameters")>
				<cfdump var="#sqlparameters#" label="sqlparameters" expand="yes"><br />
			</cfif>
			
		</cfif>

		<p class="GoToTopIntLink"><a href="#self#?fuseaction=landingPage">Return to #APPLICATION.applicationname# Homepage</a></p>

</cfoutput>
