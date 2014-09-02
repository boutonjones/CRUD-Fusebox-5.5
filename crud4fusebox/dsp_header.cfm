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
	<script src="../js/jquery-1.11.1.js" type="text/javascript"></script>    
    <script language="javascript">
        $(document).ready(function() {           
            $('#crud_table > tbody > tr:even').addClass('EvenRow');
            $('#crud_table > tbody > tr:odd').addClass('OddRow');
        }); 
    </script>
</head>
<body bgcolor="#ffffff" text="#000000" link="#0000FF" alink="#FF0000" name="top">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Left Hand "Nav Bar" -->
	<div id="navbarleft">
	
	    <div id="nav_bar">
			<a href="http://www.austintexas.gov/">COA Internet Site</a><br />
            <a href="http://cityspace/">COA intranet site</a><br />
			<a href="../crud4fw1/index.cfm?action=main.default">CRUD: FW/1</a><br />
			<a href="../crud4fw1/index.cfm?action=main.default&reload=true">CRUD: FW/1 (reload)</a><br />
			<a href="../crud4fusebox/index.cfm">CRUD: Fusebox 2</a><br />
			<cfif FindNoCase("hrdcfdev01",cgi.server_name)>
			    <a href="http://localhost/">Localhost</a><br />
				<a href="http://hrdcfdev01/hrportal/">HR Portal</a><br />
			<cfelseif FindNoCase("localhost",cgi.server_name)>
			    <a href="http://hrdcfdev01/hrportal/">HR Portal</a><br />
				<a href="../work/work.html" title="Work">Bouton's Work Notes and Code Library</a><br />
			</cfif>	
            <div style="margin-left: auto; margin-right: auto">
                <img src="images/fusebox_inside02.gif" width="91" height="36" border="0"  align="center" alt="Logo for Fusebox inside" />
            </div>
            <br />
	    </div>
	
	</div>
	<!-- Right Hand "Content" Space -->
	<div id="contentright">
		
		<cfoutput>
			<h1>#APPLICATION.applicationname#</h1>
		</cfoutput>
		
		<!-- End Header -->
        