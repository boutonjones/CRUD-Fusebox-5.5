
					<!-- Report Links -->
					<cfoutput>
					<p class="GoToTopIntLink">
						[ 
						<cfif ATTRIBUTES.fuseaction EQ "report">
							<span class="unavailable">Standard Report</span>
						<cfelse>
							<a href="#self#?fuseaction=report">Standard Report</a>
						</cfif>
						| 
						<cfif ATTRIBUTES.fuseaction EQ "DevName">
							<span class="unavailable">Report by Developer</span>
						<cfelse>
							<a href="#self#?fuseaction=DevName">Report by Developer</a> 
						</cfif>
						| 
						<cfif ATTRIBUTES.fuseaction EQ "StatusTerm">
							<span class="unavailable">Report by Status</span>
						<cfelse>
							<a href="#self#?fuseaction=StatusTerm">Report by Status</a> 
						</cfif>
						]
					</p>
					</cfoutput>