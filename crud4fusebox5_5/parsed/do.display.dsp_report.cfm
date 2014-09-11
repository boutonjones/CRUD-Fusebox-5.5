<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: display --->
<!--- fuseaction: dsp_report --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "display">
<cfset myFusebox.thisFuseaction = "dsp_report">
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/prefuseaction.cfm")><cfoutput><cfinclude template="../view/display/prefuseaction.cfm" /></cfoutput></cfif>
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/dsp_report.cfm")><cfoutput><cfinclude template="../view/display/dsp_report.cfm" /></cfoutput><cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of dsp_report which is not defined in Circuit display."></cfif>
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/postfuseaction.cfm")><cfoutput><cfinclude template="../view/display/postfuseaction.cfm" /></cfoutput></cfif>

