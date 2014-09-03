<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head xmlns="http://www.w3.org/1999/xhtml">
<title><cfoutput>#APPLICATION.applicationname#</cfoutput></title>
   <link type="text/css" rel="stylesheet" href="..\css\default.css" />
   <![if !(lt IE 9)]><link type="text/css" title="CSS3 Stylesheet" rel="stylesheet" href="..\css\css3.css" /><![endif]>
   <!--[if lt IE 9]><link title="MS IE" rel="stylesheet" type="text/css" href="..\css\ie06.css" /><![endif]-->
   <link type="text/css" rel="alternate stylesheet" href="..\css\font01.css" title="font01" />
   <link type="text/css" rel="alternate stylesheet" href="..\css\font02.css" title="font02" />
   <link type="text/css" rel="alternate stylesheet" href="..\css\font03.css" title="font03" /> 
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <style>
   <!--
   h2		{
	text-align: center;
   }
   -->
   </style>
</head>
<body bgcolor="#ffffff" text="#000000" link="#0000FF" alink="#FF0000" name="top">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Left Hand "Nav Bar" -->
	<div id="navbarleft">
	
	    <div id="nav_bar">
			<a href="http://www.austintexas.gov/">COA Internet Site</a><br />
            <a href="http://cityspace/">COA intranet site</a><br />
	        <a href="../work/work.html" title="Work">Bouton's Work Notes and Code Library</a><br />
	        <a href="http://localhost/">Localhost</a><br />
            <div style="margin-left: auto; margin-right: auto">
                <img src="images/fusebox_inside02.gif" width="91" height="36" />
            </div>
	        <br />
	    </div>

	
	</div>
	<!-- Right Hand "Content" Space -->
	<div id="contentright">
		
		<h1><cfoutput>#APPLICATION.applicationname#</cfoutput></h1>
		
		<!-- End Header -->

<cfoutput>#body#</cfoutput>
    
		<!-- Begin Footer -->
		
		<p class="GoToTopIntLink">
			[
			<a href="##top">Top</a> 
			| 
            <cfoutput>
				<cfif ATTRIBUTES.fuseaction EQ "landingPage">
                    <span class="unavailable">Return to #APPLICATION.applicationname# Homepage</span>
                <cfelse>
                    <a href="#self#?fuseaction=app.landingPage">Return to &quot;#APPLICATION.applicationname#&quot; Homepage</a>
                </cfif>
				| 
				<cfif ATTRIBUTES.fuseaction EQ "insForm">
					<span class="unavailable">Add a New Task</span>
				<cfelse>
					<a href="#self#?fuseaction=app.insForm&TaskID=0">Add a New Task</a>
				</cfif>
				| 
				<cfif ATTRIBUTES.fuseaction EQ "report">
					<span class="unavailable">SCRUM Sprint Report</span>
				<cfelse>
					<a href="#self#?fuseaction=report.report">SCRUM Sprint Report</a>
				</cfif>
            </cfoutput>
			]
		</p>

        <div align="right">Powered by Fusebox 5.5!
            (build <cfoutput>#myFusebox.getApplication().getVersion()# - #myFusebox.getApplication().mode#</cfoutput>)</div>
        
        <hr />
        
        <h2>Debug</h2>
        
        	<cfif NOT isDebugMode()><p class="error">The Debug Mode is off!  Why?</p></cfif>
        
			<!---<cfdump label="server" var="#SERVER#" expand="no" /><br /><br />--->
            
            <p><strong>ColdFusion Version:</strong> <cfoutput>#LEFT(SERVER.ColdFusion.PRODUCTVERSION, 2	)# #SERVER.ColdFusion.productlevel#</cfoutput><br />
            <strong>OS:</strong> <cfoutput>#SERVER.OS.Name# #SERVER.OS.Version#</cfoutput></p>

            <br />
			<cfdump var="#APPLICATION#" label="application" expand="no"><br />

            <cfif isDefined("ATTRIBUTES.fuseaction")>
                <p><strong>ATTRIBUTES Fuseaction:</strong> <cfoutput>#ATTRIBUTES.fuseaction#</cfoutput></p>
            <cfelse>
                <p class="error"><strong>ATTRIBUTES Fuseaction:</strong> None</p>
            </cfif>

			<br />
			<cfdump var="#ATTRIBUTES#" label="ATTRIBUTES" expand="no"><br />
            
            <cfdump var="#Request#" label="request" expand="no"><br />
            
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
            
            <cfdump var="#FUSEBOX_PARAMETERS#" label="FUSEBOX_PARAMETERS" expand="false"><br />
            <br />
            
            <p>APPLICATION.fusebox.datasource: <cfoutput>#APPLICATION.fusebox.datasource#</cfoutput></p>

	</div>

</div>

</body>
</html>
