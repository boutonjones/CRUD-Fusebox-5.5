<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: display --->
<!--- fuseaction: dsp_StatusTerm --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "display">
<cfset myFusebox.thisFuseaction = "dsp_StatusTerm">
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/prefuseaction.cfm")><cfoutput><cfinclude template="../view/display/prefuseaction.cfm" /></cfoutput></cfif>
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/dsp_StatusTerm.cfm")><cfoutput><cfinclude template="../view/display/dsp_StatusTerm.cfm" /></cfoutput><cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of dsp_StatusTerm which is not defined in Circuit display."></cfif>
<cfif fileExists("C:/inetpub/wwwroot/crud4fusebox5_5/parsed/../view/display/postfuseaction.cfm")><cfoutput><cfinclude template="../view/display/postfuseaction.cfm" /></cfoutput></cfif>

