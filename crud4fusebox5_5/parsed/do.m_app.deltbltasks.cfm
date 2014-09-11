<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: m_app --->
<!--- fuseaction: delTblTasks --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_app">
<cfset myFusebox.thisFuseaction = "delTblTasks">
<cfparam name="__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app" default="#createObject('component','crud4fusebox5_5.model.m_app')#" />
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"prefuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.prefuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.prefuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"delTblTasks") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.delTblTasks)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.delTblTasks(myFusebox=myFusebox,event=event) />
<cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of delTblTasks which is not defined in Circuit m_app.">
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"postfuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.postfuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.postfuseaction(myFusebox=myFusebox,event=event) />
</cfif>

