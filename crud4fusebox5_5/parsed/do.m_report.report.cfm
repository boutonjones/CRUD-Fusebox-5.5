<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: m_report --->
<!--- fuseaction: report --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_report">
<cfset myFusebox.thisFuseaction = "report">
<cfparam name="__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report" default="#createObject('component','crud4fusebox5_5.model.m_report')#" />
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report,"prefuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.prefuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.prefuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report,"report") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.report)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.report(myFusebox=myFusebox,event=event) />
<cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of report which is not defined in Circuit m_report.">
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report,"postfuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.postfuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_report.postfuseaction(myFusebox=myFusebox,event=event) />
</cfif>

