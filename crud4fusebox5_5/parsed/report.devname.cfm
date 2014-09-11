<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: report --->
<!--- fuseaction: DevName --->
<cftry>
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "report">
<cfset myFusebox.thisFuseaction = "DevName">
<cfparam name="__fuseboxCircuitCfc_crud4fusebox5_5_controller_report" default="#createObject('component','crud4fusebox5_5.controller.report')#" />
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report,"prefuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report.prefuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_report.prefuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report,"DevName") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report.DevName)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_report.DevName(myFusebox=myFusebox,event=event) />
<cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of DevName which is not defined in Circuit report.">
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report,"postfuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_report.postfuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_report.postfuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfcatch><cfrethrow></cfcatch>
</cftry>

