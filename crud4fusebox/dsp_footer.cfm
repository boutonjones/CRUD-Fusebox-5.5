
		<cfoutput>
        
            <!-- Begin Footer -->
            
            <p class="GoToTopIntLink">
                [
                <a href="##top">Top</a> 
                | 
                
                    <cfif ATTRIBUTES.fuseaction EQ "landingPage">
                        <span class="unavailable">Return to #APPLICATION.applicationname# Homepage</span>
                    <cfelse>
                        <a href="#self#?fuseaction=landingPage">Return to &quot;#APPLICATION.applicationname#&quot; Homepage</a>
                    </cfif>
                    | 
                    <cfif ATTRIBUTES.fuseaction EQ "insForm">
                        <span class="unavailable">Add a New Task</span>
                    <cfelse>
                        <a href="#self#?fuseaction=insForm&TaskID=0">Add a New Task</a>
                    </cfif>
                    | 
                    <cfif ATTRIBUTES.fuseaction EQ "report">
                        <span class="unavailable">SCRUM Sprint Report</span>
                    <cfelse>
                        <a href="#self#?fuseaction=report">SCRUM Sprint Report</a>
                    </cfif>
                ]
            </p>
            
            <hr />
            
            <h2>Debug</h2>
            
			<cfif NOT isDebugMode()><p class="error">The Debug Mode is off!  Why?</p></cfif>
        
            <!---<cfdump label="server" var="#SERVER#" expand="no" /><br /><br />--->
        
            <p><strong>ColdFusion Version:</strong> #LEFT(SERVER.ColdFusion.PRODUCTVERSION, 2	)# #SERVER.ColdFusion.productlevel#<br />
            <strong>OS:</strong> #SERVER.OS.Name# #SERVER.OS.Version#<br />
            <strong>Server:</strong> #cgi.server_name#</p></p>

            <br />
            <cfdump var="#APPLICATION#" label="application" expand="no"><br />

            <cfif isDefined("ATTRIBUTES.fuseaction")>
                <p><strong>ATTRIBUTES Fuseaction:</strong> <cfoutput>#ATTRIBUTES.fuseaction#</cfoutput></p>
            <cfelse>
                <p class="error"><strong>ATTRIBUTES Fuseaction:</strong> None</p>
            </cfif>

            <br />
            <cfdump var="#ATTRIBUTES#" label="ATTRIBUTES" expand="no"><br />
            
            <cfif NOT isDefined("FORM")>
                <p>No FORM</p>
            <cfelseif NOT StructIsEmpty(FORM)>
                <br />                
                <cfdump var="#FORM#" label="FORM" expand="false"><br /> 
                <br />
            <cfelse>
                <p>The FORM is empty.</p>
            </cfif>
            
            <cfif isDefined("LOCAL")>
                <cfdump var="#local#" label="local" expand="false"><br />
                <br />
            </cfif>            

            <cfdump var="#request#" label="request" expand="false"><br />
            <br />
                
		</cfoutput>

	</div>

</div>

</body>
</html>