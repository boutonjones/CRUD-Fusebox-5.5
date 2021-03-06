<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: m_app --->
<!--- fuseaction: updateForm --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_app">
<cfset myFusebox.thisFuseaction = "updateForm">
<cfparam name="__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app" default="#createObject('component','crud4fusebox5_5.model.m_app')#" />
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"prefuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.prefuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.prefuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"updateForm") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.updateForm)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.updateForm(myFusebox=myFusebox,event=event) />
<cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of updateForm which is not defined in Circuit m_app.">
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app,"postfuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.postfuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_model_m_app.postfuseaction(myFusebox=myFusebox,event=event) />
</cfif>

